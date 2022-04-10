Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7CC4FAB2F
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Apr 2022 02:10:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ndLA9-00027G-Ox; Sun, 10 Apr 2022 00:10:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lei@jdll.com.sg>) id 1ndLA7-000275-W2
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Apr 2022 00:10:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l9g/zVpAKwdCFAi5SfauMHoiNX2zGhm4QQMyDkbXMUA=; b=giup2opioaKR/Sx9RWS5I1kzXF
 XDNzs5uGkF9tZoM0zcw18uSGxSQhVay81Bk4W7uYMrOMltKyfnX87mGHnBhqpTfpb76oiJvuqPylm
 LnVJai8IsAehZBIsqKodOqTYtfxBV0KRdxwcFXMviprmP5hRqke/APHLDsezoE1JViM0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=l9g/zVpAKwdCFAi5SfauMHoiNX2zGhm4QQMyDkbXMUA=; b=l
 bWcB3LPCC1uEQ+Ja7G3M3yzqJ80guHQJtt0eXZ0e7v2GJGhbdMqy8Wnoqukz3so2/QodI7hjtk8eU
 AM7mfJ8Ig8SelclTL7YxaXndkRarD30tfcY4vShRRATj0bXzhFHu37RrqzcNhGq5NTC8/0frm9SGv
 LkeZV/kC5APQWKPo=;
Received: from [103.11.190.49] (helo=v190049.serveradd.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ndLA2-0007xX-50
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Apr 2022 00:10:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jdll.com.sg
 ; s=default;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l9g/zVpAKwdCFAi5SfauMHoiNX2zGhm4QQMyDkbXMUA=; b=qJR3dNMxO1wRLGdYz6VRNZZIhW
 ZfFVz+JjUoU/a7479vWDTjbaXJWb+HLfqC+No2U625p6WyT5eauhpqgXitIkF1xGQzUFjxI8qU8W7
 0+PFBrQXn9CTzTWrjHUJtV5VFdAYF20KmqXKUQ7kjZTZgIvinoyYhipyOC2UwA3sGqr/LrJ9KKnCT
 OqxqlYC7SHtyYHT41rx4X1LYOtWg/7xKjqXVZ3xl5UN4Jid2x/LaMdDwNFi9ic5G1ijFuMAG5Aqsw
 FsHuefikx9h0kMzO9Sw0kThvEfTI+h1QAxSwz0yrsUvzGVOLK77TVJwP9fE6C8WkH1jsPWdnIRnWz
 2LVDjIww==;
Received: from [114.104.141.117] (port=64336 helo=pc268)
 by v190049.serveradd.com with esmtpa (Exim 4.94.2)
 (envelope-from <lei@jdll.com.sg>) id 1ndL9k-0004V4-KM
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Apr 2022 08:10:17 +0800
X-GUID: CA997995-0647-4D5D-AD68-C478F95FAFCB
X-Has-Attach: no
From: =?UTF-8?B?Iue0p+aApemAmuefpe+8mumCrueuse+8iOezu+e7n+S8mOWMlu+8iSI=?=
 <lei@jdll.com.sg>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Sun, 10 Apr 2022 08:10:16 +0800
X-Priority: 1
Message-Id: <202204100810156295860@jdll.com.sg>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - v190049.serveradd.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - jdll.com.sg
X-Get-Message-Sender-Via: v190049.serveradd.com: authenticated_id:
 lei@jdll.com.sg
X-Authenticated-Sender: v190049.serveradd.com: lei@jdll.com.sg
X-Spam-Score: 4.1 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  <p> 通知：v9fs-developer@lists.sourceforge.net由于多位员工反应邮箱卡顿，我司将于2022年4月起开始升级邮箱系统，现在提前采集信息方便升级使用！过期未更�
    [...] 
 
 Content analysis details:   (4.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1ndLA2-0007xX-50
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
YWlsdG86YWQtbWluLWluc3RvckBmb3htYWlsLmNvbSI+YWQtbWluLWluc3RvckBmb3htYWlsLmNv
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
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IOezu+e7n+mCrueuseeu
oeeQhuWRmOmAgei+vu+8gQ0KPC9wPg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
