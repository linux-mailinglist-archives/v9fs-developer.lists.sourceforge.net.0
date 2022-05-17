Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0011F52AC4A
	for <lists+v9fs-developer@lfdr.de>; Tue, 17 May 2022 21:55:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nr3I3-0003Bg-QU; Tue, 17 May 2022 19:55:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <alice@fj689.com.tw>) id 1nr3I1-0003BZ-Rl
 for v9fs-developer@lists.sourceforge.net; Tue, 17 May 2022 19:55:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pmb2YPrqloE3h8VBIuwA2o+9vhWr89INgPnF79XKsSI=; b=QWq3aNslB7c0i2Kp4z+7LDKWi4
 sSBVFGVxXkJK84KPYKaFM6obLLupmQUJoDPqBvdqa4ujlXcJIhYO/JvZEpPDyjqazXR94YDBdh9vA
 2chJ1zbXB3ZcnSrVmAk9qYLA1oMb48uPxwYQPP2YBqRM7KY0RBB8YJzdr8AnU5Cfx9mA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pmb2YPrqloE3h8VBIuwA2o+9vhWr89INgPnF79XKsSI=; b=B
 Cu8gQ5ZvLzXd64lvvpZkLKU0HgInp9EzJo2d1vpQs6TxbuheRrSJrHG5WuCAmV8yI5sHudokZ4o0J
 XeyyzGDsS2GWdD2ULo0z8eq7p7h+WTBXL2cCnfB5Uy3pZbIke5LbA3C9dssiPYysWmhs1exRRrQL3
 t8fOSPXYHaaJsP2s=;
Received: from 220-130-227-233.hinet-ip.hinet.net ([220.130.227.233]
 helo=fj689.com.tw) by sfi-mx-2.v28.lw.sourceforge.com with esmtp 
 (Exim 4.94.2) id 1nr3Hx-0007nN-TR
 for v9fs-developer@lists.sourceforge.net; Tue, 17 May 2022 19:55:28 +0000
Received: from PC372 ([60.172.83.69]) by fj689.com.tw ([192.168.0.250]);
 Wed, 18 May 2022 03:55:16 +0800
X-GUID: 256D906E-CA82-4E3C-8899-BC469C58C601
X-Has-Attach: no
From: =?UTF-8?B?44CQ5YWsIOWRiuOAkQ==?= <alice@fj689.com.tw>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Wed, 18 May 2022 03:55:15 +0800
X-Priority: 1
Message-Id: <202205180355150491192@fj689.com.tw>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  <p> <strong>v9fs-developer@lists.sourceforge.net</strong>
   </p> <p> <span style="color:#E53333;">接上级通知各部门人员，本企业所有用户登录密码均可能泄露为避免数据丢失�
    [...] 
 
 Content analysis details:   (5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 TVD_RCVD_IP            Message was received from an IP address
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
                [Blocked - see <https://www.spamcop.net/bl.shtml?60.172.83.69>]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                           [220.130.227.233 listed in bl.score.senderscore.com]
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [220.130.227.233 listed in dnsbl-1.uceprotect.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.4 RDNS_DYNAMIC           Delivered to internal network by host with
                             dynamic-looking rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
                             "accounts suspended", "account credited",
                             "account verification"
  0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1nr3Hx-0007nN-TR
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?djlmcy1kZXZlbG9wZXLntKfmgKXpgJrnn6U=?=
 =?utf-8?b?77yB?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

PHA+DQoJPHN0cm9uZz52OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ8L3N0cm9u
Zz4gDQo8L3A+DQo8cD4NCgk8c3BhbiBzdHlsZT0iY29sb3I6I0U1MzMzMzsiPuaOpeS4iue6p+mA
muefpeWQhOmDqOmXqOS6uuWRmO+8jOacrOS8geS4muaJgOacieeUqOaIt+eZu+W9leWvhueggeWd
h+WPr+iDveazhOmcsuS4uumBv+WFjeaVsOaNruS4ouWkse+8jOivt+eZu+mZhuaWsOeJiOezu+e7
n+WPiuaXtui/m+ihjOmHjeaWsOWkh+ahiOeZu+iusO+8jOWxiuaXtjXmnIgxOOaXpei/m+ihjOWI
oOmZpOmVv+acn+acqueZu+W9leeahOmCrueuse+8jOivt+WQhOmDqOmXqOaMieeFp+aMh+W8lei/
m+ihjOaTjeS9nO+8jOWmguacquWkh+ahiOiiq+inhuS4uuaXoOS6uuS9v+eUqOi0puWPt+W5tuaa
guWBnOacjeWKoeOAguiwouiwoumFjeWQiO+8ge+8iOi9rOenu+acn+mXtOW5tuS4jeW9seWTjei9
rOenu+acn+mXtOWGheeahOmCruS7tuato+W4uOWPkeaUtuOAgu+8iTwvc3Bhbj4gDQo8L3A+DQo8
cD4NCgktLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPC9wPg0KPHA+DQoJPGEgaHJlZj0iaHR0
cDovL21haWxiZWlhbi5jbi9wYWdlLnBocCIgdGFyZ2V0PSJfYmxhbmsiPuWcqOWkh+ahiOWJje+8
jOivt+S7lOe7humYheivu+WmguS4i+W4kOaIt+WvhueggeinhOWIme+8mjwvYT4gDQo8L3A+DQo8
cD4NCgk8YSBocmVmPSJodHRwOi8vbWFpbGJlaWFuLmNuL3BhZ2UucGhwIiB0YXJnZXQ9Il9ibGFu
ayI+Jm5ic3A7MS7or7floavlhpnlvZPliY3mraPnoa7lr4bnoIHvvJs8L2E+IA0KPC9wPg0KPHA+
DQoJPGEgaHJlZj0iaHR0cDovL21haWxiZWlhbi5jbi9wYWdlLnBocCIgdGFyZ2V0PSJfYmxhbmsi
PiZuYnNwOzIu5a+G56CB5b+F6aG756ym5ZCI5aSN5p2C5oCn6KaB5rGC77yM5a+G56CB6Iez5bCR
5YyF5ZCr5pyJ5LiL6Z2iNOexu+Wtl+espue7hOS4reeahDPnsbvvvJo8L2E+IA0KPC9wPg0KPHA+
DQoJPGEgaHJlZj0iaHR0cDovL21haWxiZWlhbi5jbi9wYWdlLnBocCIgdGFyZ2V0PSJfYmxhbmsi
PiZuYnNwOzMu5a+G56CB5LiN6IO95YyF5ous5oKo55qE5biQ5oi35YWo5ZCN77ybPC9hPiANCjwv
cD4NCjxwPg0KCTxhIGhyZWY9Imh0dHA6Ly9tYWlsYmVpYW4uY24vcGFnZS5waHAiIHRhcmdldD0i
X2JsYW5rIj4mbmJzcDs0LuWkh+ahiOWujOaIkOS4jeW+l+maj+aEj+abtOaUueWkh+ahiOWvhueg
geOAgjwvYT4gDQo8L3A+DQo8cD4NCgktLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPC9wPg0K
PHA+DQoJPGEgaHJlZj0iaHR0cDovL21haWxiZWlhbi5jbi9wYWdlLnBocCIgdGFyZ2V0PSJfYmxh
bmsiPueCueWHu+iuv+mXriBtYWlsLuWumOe9kS3lpIfmoYjkuK3lv4PjgII8L2E+IA0KPC9wPg0K
PHA+DQoJLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCjwvcD4NCjxwPg0KCTxhIGhyZWY9Imh0
dHA6Ly9tYWlsYmVpYW4uY24vcGFnZS5waHAiIHRhcmdldD0iX2JsYW5rIj5EZWFyIDpUaGUgc3Vw
ZXJpb3IgaW5mb3JtZWQgdGhlIHBlcnNvbm5lbCBvZiBhbGwgZGVwYXJ0bWVudHMgdGhhdCB0aGUg
bG9naW4gcGFzc3dvcmRzIG9mIGFsbCB1c2VycyBvZiB0aGUgZW50ZXJwcmlzZSBtYWlsYm94IG9m
IENoYW5naG9uZyBjb21wYW55IG1heSBiZSBsZWFrZWQuIEluIG9yZGVyIHRvIGF2b2lkIHRoZSBs
b3NzIG9mIGRhdGEsIHBsZWFzZSByZSByZWNvcmQgYW5kIHJlZ2lzdGVyIGluIHRpbWUuIEF0IHRo
YXQgdGltZSwgZGVsZXRlIHRoZSBtYWlsYm94IHRoYXQgaGFzIG5vdCBiZWVuIGxvZ2dlZCBpbiBm
b3IgYSBsb25nIHRpbWUuIEFsbCBkZXBhcnRtZW50cyBhcmUgcmVxdWlyZWQgdG8gb3BlcmF0ZSBh
Y2NvcmRpbmcgdG8gdGhlIGd1aWRlbGluZXMuIElmIGl0IGlzIG5vdCByZWNvcmRlZCwgaXQgd2ls
bCBiZSByZWdhcmRlZCBhcyBhbiB1bnVzZWQgYWNjb3VudCBhbmQgdGhlIHNlcnZpY2Ugd2lsbCBi
ZSBzdXNwZW5kZWQuIFRoYW5rIHlvdSBmb3IgeW91ciBjb29wZXJhdGlvbiE8L2E+IA0KPC9wPg0K
PHA+DQoJPGEgaHJlZj0iaHR0cDovL21haWxiZWlhbi5jbi9wYWdlLnBocCIgdGFyZ2V0PSJfYmxh
bmsiPiZuYnNwOy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9hPiANCjwvcD4NCjxwPg0KCTxh
IGhyZWY9Imh0dHA6Ly9tYWlsYmVpYW4uY24vcGFnZS5waHAiIHRhcmdldD0iX2JsYW5rIj4mbmJz
cDtCZWZvcmUgZmlsaW5nLCBwbGVhc2UgY2FyZWZ1bGx5IHJlYWQgdGhlIGZvbGxvd2luZyBhY2Nv
dW50IHBhc3N3b3JkIHJ1bGVzOiAxLiBQbGVhc2UgZmlsbCBpbiB0aGUgY3VycmVudCBjb3JyZWN0
IHBhc3N3b3JkOzsgMi4gVGhlIHBhc3N3b3JkIG11c3QgbWVldCB0aGUgY29tcGxleGl0eSByZXF1
aXJlbWVudHMuICAzLiBUaGUgcGFzc3dvcmQgY2Fubm90IGluY2x1ZGUgeW91ciBmdWxsIGFjY291
bnQgbmFtZTsgNC4gQWZ0ZXIgZmlsaW5nLCB0aGUgZmlsaW5nIHBhc3N3b3JkIHNoYWxsIG5vdCBi
ZSBjaGFuZ2VkIGF0IHdpbGwuPC9hPiANCjwvcD4NCjxwPg0KCTxhIGhyZWY9Imh0dHA6Ly9tYWls
YmVpYW4uY24vcGFnZS5waHAiIHRhcmdldD0iX2JsYW5rIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLTwvYT4gDQo8L3A+DQo8cD4NCgk8YSBocmVmPSJodHRwOi8vbWFpbGJlaWFuLmNuL3BhZ2Uu
cGhwIiB0YXJnZXQ9Il9ibGFuayI+VmlzaXQg5YWs5Y+45a6Y572RLmNvbSBGaWxpbmcgQ2VudGVy
PC9hPiANCjwvcD4NCjxwPg0KCTxhIGhyZWY9Imh0dHA6Ly9tYWlsYmVpYW4uY24vcGFnZS5waHAi
IHRhcmdldD0iX2JsYW5rIj4mbmJzcDstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvYT4gDQo8
L3A+DQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
