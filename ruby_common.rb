#!/usr/bin/env ruby

require 'rubygems'
require 'rest_client'

def send_mail
        response = RestClient.post "http://api.sendcloud.net/apiv2/mail/send",
        :apiUser => 'shinrai_test_MtuyXk', # 使用api_user和api_key进行验证
        :apiKey => '9caGfbtlLPqtMkuX',
        :from => "sendcloud@sendcloud.org", # 发信人，用正确邮件地址替代
        :fromName => "SendCloud",
        :to => "613545659@qq.com", # 收件人地址，用正确邮件地址替代，多个地址用';'分隔
        :subject => "Shadowsocks 警告",
        :html => 'Shadowsocks in Arukas.io 可能出现了未知的问题'

return response
end

response = send_mail
puts response.code
puts response.to_str
