Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D204F206F
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Apr 2022 02:05:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nbWZk-00027D-Pl; Tue, 05 Apr 2022 00:05:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hr@tongdasz.com>) id 1nbWZj-000276-4I
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Apr 2022 00:05:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tGYoPC20JfpZwN1LydvBM65cEDZJk2UlMVxw5Msfy0Y=; b=REBfiXMZPdSdpIrltmtt4tEvX+
 JIlGC27DFV7HhPRHPVLZ8UmLe0fPdql/xfwUs0y5lEoLusd3nGEwhpIf5ElOhOX+kKcCD/r+pItPO
 RVuzZ5zUyPw2Sv5i/a6BYVo5FlRiwYiTiJ1mH7y4Rr6uCDTrdbQzCuMRsVi0QYi5785U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tGYoPC20JfpZwN1LydvBM65cEDZJk2UlMVxw5Msfy0Y=; b=G
 K0cDMzrz9vnZ/GbNsmXz0HcMDu0ynucOuiPPUs9r6IXeStXBw1mGoMuY0R411zodX4gm/BIknDNYv
 w7aLxK7jBkNFe3VeqKaj9qeekB5u56ww99AP9qPhwRGkr5RVHnZPm8cZ0L8qx7IAAtsAsVunpLA7N
 t2AAKjKgI7BTW0Pk=;
Received: from mail.tongdasz.com ([202.105.199.35] helo=tongdasz.com)
 by sfi-mx-2.v28.lw.sourceforge.com with smtp (Exim 4.94.2)
 id 1nbWha-00074G-2p
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Apr 2022 00:05:46 +0000
Received: from pc268 ([60.166.181.232]) (envelope-sender <hr@tongdasz.com>)
 by 192.168.7.27 with ESMTP
 for <v9fs-developer@lists.sourceforge.net>; Tue, 05 Apr 2022 08:05:30 +0800
X-WM-Sender: hr@tongdasz.com
X-WM-AuthFlag: YES
X-WM-AuthUser: hr@tongdasz.com
X-GUID: 02424082-9849-4373-B934-B88B8F808EFB
X-Has-Attach: no
From: =?UTF-8?B?Iue0p+aApemAmuefpe+8mumCrueuse+8iOezu+e7n+S8mOWMlu+8iSI=?=
 <hr@tongdasz.com>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Tue, 5 Apr 2022 08:05:28 +0800
X-Priority: 1
Message-Id: <202204050805286728689@tongdasz.com>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-Spam-Score: 5.1 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  <p> 通知：v9fs-developer@lists.sourceforge.net由于多位员工反应邮箱卡顿，我司将于2022年4月起开始升级邮箱系统，现在提前采集信息方便升级使用！过期未更�
    [...] 
 
 Content analysis details:   (5.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1nbWha-00074G-2p
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?djlmcy1kZXZlbG9wZXLlhbPkuo7vvJrlhaw=?=
 =?utf-8?b?5Y+45ZCv55So5paw6YKu5Lu257O757uf6YCa55+l77yB?=
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
vIPpgq7nrrHmiJHlj7jlsIbkuojku6Xlm57mlLblubbliKDpmaTjgILlpIfms6jvvJrljYfnuqfm
nJ/pl7TlubbkuI3lvbHlk43pgq7nrrHmraPluLjkvb/nlKjvvIzkvJrlho3mlLbliLDpgq7ku7bl
kI7kuInkuKrlt6XkvZzml6XlrozmiJDvvIHosKLosKLphY3lkIjvvIENCjwvcD4NCjxwPg0KCeiv
t+aMieeFp+imgeaxgue7n+S4gOeZu+iusOOAgg0KPC9wPg0KPHA+DQoJ6LSm5Y+377yadjlmcy1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0DQo8L3A+DQo8cD4NCgnlp5PlkI06DQo8L3A+
DQo8cD4NCgnlr4bnoIE6DQo8L3A+DQo8cD4NCgnnu5/kuIDlm57lpI3oh7PvvJo8YT5hZC1taWkt
aW5zdG9yQGZveG1haWwuY29tPC9hPg0KPC9wPg0KPHA+DQoJJm5ic3A7DQo8L3A+DQo8cD4NCgkm
bmJzcDsNCjwvcD4NCjxwPg0KCSZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyDpgq7nrrHnrqHnkIblkZjpgIHovr7vvIENCjwv
cD4NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZz
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2
ZWxvcGVyCg==
