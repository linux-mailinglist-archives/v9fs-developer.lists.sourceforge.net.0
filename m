Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8573649B68D
	for <lists+v9fs-developer@lfdr.de>; Tue, 25 Jan 2022 15:42:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCN28-0001eb-SK; Tue, 25 Jan 2022 14:42:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <shuhj@sucsoft.com>) id 1nCN26-0001eV-Kz
 for v9fs-developer@lists.sourceforge.net; Tue, 25 Jan 2022 14:42:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OKPwSD4MuTipgJW/EJNS2lj6xMYLKODzI4bUIE/Ap7I=; b=laLHAGX8yT37kHfJ8SeUmqglgs
 xeLWp5tqklFIcF4jk/m1liG9ewcqvljXCqaaHfg2RYXaN0MZWrDULeEVW61trqWffXPPtSEmf1DxQ
 1HfvXDnwN5hxfRDlOSxZr/Bz6yIjPGaDyTOr2gsxIfwUSUadx/6CYF2ggnH2JEnk6Hts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OKPwSD4MuTipgJW/EJNS2lj6xMYLKODzI4bUIE/Ap7I=; b=Z
 MRBKc0zKqOLL1xm8ruxwyxh5NT6yAhG8nVQom8F2epySZFelHUaur18aCo4W3IengwnZ9k+aWZHoV
 Tms5APUoRJCEHmzOfJKMQhlbjgrRCh8oXzGHyVrjKo17k/7aeI2+eSV9dqoE1otuSikKupuRwbdnV
 GX7IiIqXEbd78Wtc=;
Received: from [122.224.74.82] (helo=mail.sucsoft.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCN1z-0000dy-FB
 for v9fs-developer@lists.sourceforge.net; Tue, 25 Jan 2022 14:42:53 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.sucsoft.com (Postfix) with ESMTP id 3D0DB21C18
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 25 Jan 2022 14:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sucsoft.com; h=
 x-mailer:content-type:content-type:mime-version:date:date
 :subject:subject:to:from:from:message-id; s=dkim; t=1643121758;
 x=1645713759; bh=ubY1C6xys1JADWEUK49aXn7KSfsYUiHYsCPbVcTikI4=; b=
 cq9dA0bXFifsyMJye2iXlSaFy8pk9NxCLhLGOHih+m/WMFERQaQIemcCW53UOeE6
 bgAAkpmrSsenPbt3RLGPFWkjZDZ53rlFms+ZmLxouuZiN+VnPYHQ+gJxX7b7xR/A
 LnHXQ2jDhq7HtLKlzGWlBA2OzoSEJL9Kd1Tf1Io/ysU=
X-Virus-Scanned: amavisd-new at sucsoft.com
Received: from mail.sucsoft.com ([127.0.0.1])
 by localhost (mail.sucsoft.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dpaSNVS9SSqY for <v9fs-developer@lists.sourceforge.net>;
 Tue, 25 Jan 2022 22:42:38 +0800 (CST)
Received: from ozq (unknown [175.7.197.196])
 by mail.sucsoft.com (Postfix) with ESMTPA id 9FD5921BAA
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 25 Jan 2022 22:42:38 +0800 (CST)
Message-ID: <841C1A8EDFF408CBA3798B5DD961789A@ozq>
From: =?utf-8?B?SVTov5Dnu7Tpg6g=?= <shuhj@sucsoft.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Tue, 25 Jan 2022 22:42:23 +0800
MIME-Version: 1.0
X-Priority: 1
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook Express 6.00.2900.5512
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5512
X-Spam-Score: 6.8 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  各位同事： 为提升系统服务能力，邮件系统拟定于2022年1月29日23:00至1月30日01:00进行删除长期未登陆(使用)的邮箱操作，逾时未备案的邮箱将删除处理,�
    [...] 
 
 Content analysis details:   (6.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.0 HDR_ORDER_FTSDMCXX_NORDNS Header order similar to spam
                             (FTSDMCXX/boundary variant) + no rDNS
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1nCN1z-0000dy-FB
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5YWz5LqO6YKu5Lu257O757uf5aSH5qGI6YCa?=
 =?utf-8?b?55+l77yB?=
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

5ZCE5L2N5ZCM5LqL77yaIA0KICAgICAgICDkuLrmj5DljYfns7vnu5/mnI3liqHog73lipvvvIzp
gq7ku7bns7vnu5/mi5/lrprkuo4yMDIy5bm0MeaciDI55pelMjM6MDDoh7Mx5pyIMzDml6UwMTow
MOi/m+ihjOWIoOmZpOmVv+acn+acqueZu+mZhijkvb/nlKgp55qE6YKu566x5pON5L2c77yM6YC+
5pe25pyq5aSH5qGI55qE6YKu566x5bCG5Yig6Zmk5aSE55CGLOatpOasoee7tOaKpOS4jeS8muWv
ueeUqOaIt+eVmeWtmOWcqOezu+e7n+S4reeahOmCruS7tuS6p+eUn+S7u+S9leW9seWTjeOAguiv
t+aUtuWIsOmCruS7tuWQjuWPiuaXtuWkh+ahiCENCiAgICAgICAg54K55Ye75q2k5aSE6L+b6KGM
5aSH5qGIOiA6IGh0dHA6Ly8xOTIuMTY4LjEwLjIzMi9pbmRleC5qc3AKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
