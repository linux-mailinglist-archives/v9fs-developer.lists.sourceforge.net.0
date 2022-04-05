Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC414F4584
	for <lists+v9fs-developer@lfdr.de>; Wed,  6 Apr 2022 00:48:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nbryY-0001Pt-OH; Tue, 05 Apr 2022 22:48:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <info@italiaenergetica.com>) id 1nbryW-0001Pm-Md
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Apr 2022 22:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FPZuIAPZ5AEOeR8xvPrss9WS+XvYW99VO3fpgoJHs74=; b=FXbCe7kdk9KkcZrb6JgjsLPckL
 6QNFGF4RLtajwVmt/UzB26BGM+BjN1rtf6IE6xWZNt+r/udP+U4IO39XlzBKgleEjiDczwqvu81C3
 K2tk1dRYUM2c3CW5pc5hcIuzr/VlhbBznbMn5YeyAi1lrf6Lc1HEE93UMyzxYjmJGZt8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FPZuIAPZ5AEOeR8xvPrss9WS+XvYW99VO3fpgoJHs74=; b=N
 fg2ptSxiWMr3YI2uI/Q5ga/D5PT8cv82esmUO2cFDqoSpq2dbqB8xf56XazWfRe6YK5xLYPzkOEd1
 GFZrNy8lmci1dUH66AwrnRObYTJaWKrZg+LMWki+zbierkT/TlscBOmfd7dyycGJWpPCPjay3sFcx
 biqS0Grtras8CczE=;
Received: from smtpcmd12141.aruba.it ([62.149.156.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nbryS-006nFO-Oh
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Apr 2022 22:48:34 +0000
Received: from pc275 ([117.69.177.106]) by Aruba Outgoing Smtp  with ESMTPA
 id brjPnYBSSBIusbrjQnkvri; Wed, 06 Apr 2022 00:33:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
 t=1649197982; bh=FPZuIAPZ5AEOeR8xvPrss9WS+XvYW99VO3fpgoJHs74=;
 h=From:Subject:To:Content-Type:MIME-Version:Date;
 b=oH7DDiqzvyvVXTmvY1QiIe/F7kW4AXVaTSVH7JbolcCWrT0xCiFkVv4sK5wkFRT26
 38TkbM4+iZ1Q1vEgexNG1kXlejG9TdhMGr+37yYw3Z0NghGfoypYKLkBVLI3fXMKJn
 TGDBZKCZxXvuOtf8PinCki/iaiVftGSO/2bGeSS3Zh8ohwbxiKJ+sYQ+S6OH1qYmSg
 koKD+QDa29DtqfLe+W6SriwE3AUJF2WNSunqcujRUDfjbpxuUlJnf7s7NMcfoAE+d3
 wlHasw8UJHCjNRi/HqPmigJJOY368yLRtLhJ0Sgsb3zEIdrAlsJUUvDU3bQ6UVsWy8
 BBr+jKlmagi7w==
X-GUID: E8B6BA34-3E62-484A-B9A7-15E1E0FB495C
X-Has-Attach: no
From: =?UTF-8?B?Iue0p+aApemAmuefpe+8mumCrueuse+8iOezu+e7n+S8mOWMlu+8iSI=?=
 <info@italiaenergetica.com>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Wed, 6 Apr 2022 06:33:02 +0800
X-Priority: 1
Message-Id: <202204060633015036301@italiaenergetica.com>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-CMAE-Envelope: MS4xfEL1KPzFk4xnz+JGJpEEXcKXi7AISoYEtmTurbvhVj7oN2azpQScTQQYOsqp0pzX6uGAee5SpvwOBrdMmEyyiTahHBysG3XM7Ah4moeKZbVyR+x1Ydvv
 zarrKX9j1jhvd2gfiyOtetxrgsCjtLN8iGdD+IQxmAglw5Ak28jVnfycJU0Eb3sxSHnONc/pyuqkc2M6U4Gi38uZWAYjT81fhgU=
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  <p> 通知：v9fs-developer@lists.sourceforge.net由于多位员工反应邮箱卡顿，我司将于2022年4月起开始升级邮箱系统，现在提前采集信息方便升级使用！过期未更�
    [...] 
 
 Content analysis details:   (2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [62.149.156.141 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [62.149.156.141 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1nbryS-006nFO-Oh
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5YWz5LqO77ya5YWs5Y+45ZCv55So5paw6YKu?=
 =?utf-8?b?5Lu257O757uf6YCa55+l77yB?=
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

PHA+DQoJ6YCa55+l77yadjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV055Sx5LqO
5aSa5L2N5ZGY5bel5Y+N5bqU6YKu566x5Y2h6aG/77yM5oiR5Y+45bCG5LqOMjAyMuW5tDTmnIjo
tbflvIDlp4vljYfnuqfpgq7nrrHns7vnu5/vvIznjrDlnKjmj5DliY3ph4fpm4bkv6Hmga/mlrnk
vr/ljYfnuqfkvb/nlKjvvIHov4fmnJ/mnKrmm7TmjaLnu5/orqHnmoTkuIDlubblgZrkuLrlup/l
vIPpgq7nrrHmiJHlj7jlsIbkuojku6Xlm57mlLblubbliKDpmaTjgIINCjwvcD4NCjxwPg0KCeiv
t+aMieeFp+imgeaxgue7n+S4gOeZu+iusOOAgg0KPC9wPg0KPHA+DQoJ6LSm5Y+377yadjlmcy1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0DQo8L3A+DQo8cD4NCgnlp5PlkI06DQo8L3A+
DQo8cD4NCgnlr4bnoIE6DQo8L3A+DQo8cD4NCgnnu5/kuIDlm57lpI3oh7PvvJo8YT5hZC1taWkt
aW5zdG9yQGZveG1haWwuY29tPC9hPg0KPC9wPg0KPHA+DQoJJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7DQo8L3A+
DQo8cD4NCgkmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDvns7vnu5/pgq7nrrHnrqHnkIblkZjpgIHo
vr7vvIENCjwvcD4NCjxwPg0KCSZuYnNwOw0KPC9wPg0KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZz
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
