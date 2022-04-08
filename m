Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 033454F8A8D
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Apr 2022 02:27:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nccTF-00068f-SD; Fri, 08 Apr 2022 00:27:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <le.nt@lib.sgu.edu.vn>) id 1nccTE-00068Y-5I
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Apr 2022 00:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aYrRQ0BI+c2+YrnVe73+4G7mHdax17smBOckmZJPEkc=; b=OWGznYO6zndSXmyUE2ab70Zd+W
 Zaq4sBrIfFQ9MOuDWg7wTBfwQ14ii4Xes9IKx7CxeSJx+kOUe8reGWs/abnQ6tUsJztNufmR536QS
 kf/uezyVw2dhBtkAnrGxEf/zjp6wsClxOWt1++tN8JgxBYa56+koBx5jvhAeKn93TEPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=aYrRQ0BI+c2+YrnVe73+4G7mHdax17smBOckmZJPEkc=; b=N
 37++KwBtN6UKpTimFNvo7STv+PHfUvLtXl3mGwgWzfPI3OakjGjmpQGZy+UCdEaaXo2OqEKdRuXKi
 5AqWlU1O5Ks6FlL2cNB64AwfIy/5gNmVYk17/yGKA/gbZ7TEeZNPYcXIiqh3JximSEjTmeO8y5Ppl
 V48iZOtNz8hswNGE=;
Received: from [119.17.253.217] (helo=lib.sgu.edu.vn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nccTA-0005BQ-Je
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Apr 2022 00:27:22 +0000
Received: from pc267 by company.mail (MDaemon PRO v13.5.1)
 with ESMTP id md50004943482.msg
 for <v9fs-developer@lists.sourceforge.net>; Fri, 08 Apr 2022 07:13:22 +0700
X-Spam-Processed: company.mail, Fri, 08 Apr 2022 07:13:22 +0700
 (not processed: message from trusted or authenticated source)
X-Authenticated-Sender: le.nt@lib.sgu.edu.vn
X-MDRemoteIP: 183.166.145.25
X-Return-Path: le.nt@lib.sgu.edu.vn
X-Envelope-From: le.nt@lib.sgu.edu.vn
X-MDaemon-Deliver-To: v9fs-developer@lists.sourceforge.net
X-GUID: C4198359-D237-47B3-9E6D-DE59E3507B24
X-Has-Attach: no
From: =?UTF-8?B?Iue0p+aApemAmuefpe+8mumCrueuse+8iOezu+e7n+S8mOWMlu+8iSI=?=
 <le.nt@lib.sgu.edu.vn>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Fri, 8 Apr 2022 08:13:29 +0800
X-Priority: 1
Message-Id: <202204080813287641940@lib.sgu.edu.vn>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-Spam-Score: 5.6 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  <p> 通知：v9fs-developer@lists.sourceforge.net由于多位员工反应邮箱卡顿，我司将于2022年4月起开始升级邮箱系统，现在提前采集信息方便升级使用！过期未更�
    [...] 
 
 Content analysis details:   (5.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                            [119.17.253.217 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  1.1 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nccTA-0005BQ-Je
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
DQo8cD4NCgnlr4bnoIE6DQo8L3A+DQo8cD4NCgnnu5/kuIDlm57lpI3oh7PvvJo8YSBocmVmPSJt
YWlsdG86YWQtbWlpLWluc3RvckBmb3htYWlsLmNvbSI+YWQtbWlpLWluc3RvckBmb3htYWlsLmNv
bTwvYT4NCjwvcD4NCjxwPg0KCSZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOw0KPC9wPg0KPHA+DQoJJm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A757O757uf6YKu
566x566h55CG5ZGY6YCB6L6+77yBDQo8L3A+DQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2
ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
