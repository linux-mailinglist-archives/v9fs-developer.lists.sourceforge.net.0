Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5A8285575
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Oct 2020 02:33:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kPxO5-00031Q-Nx; Wed, 07 Oct 2020 00:32:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yewsdgkjerd@126.com>) id 1kPxO4-00031E-3y
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Oct 2020 00:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Content-Transfer-Encoding:Content-Type:To:
 Subject:From:Sender:Reply-To:Message-ID:Cc:MIME-Version:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ocBpME1KOUqvUIHzzQZviDP7Xj8GDo7hC1bVBkjyEnM=; b=QBXFY/ELLvqX5kuIvCLirSxlYG
 G8mt1j1UIt2h81PdxVXHA8nMMndBU579Eg9GNCiIPrY0c+elupTg9pFWlnXQG4fa22niTHMLiidJk
 XuzYJ/VZNPRzTA3QPoaktwa4pdh4aMd2WdjlvrO1D6qFh7ewaTiV9eMwHKaCVzRB0i6U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Content-Transfer-Encoding:Content-Type:To:Subject:From:Sender:
 Reply-To:Message-ID:Cc:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ocBpME1KOUqvUIHzzQZviDP7Xj8GDo7hC1bVBkjyEnM=; b=aQcDufc+3JQdnS7q3cphhD6fR/
 Ajzx2mWR/0iRzfM+4wRoMdcyCEwUJKbImgyd5qUFJKCRH1wXhZB2VwpknYi2cnoNoqGGh7Pf3IY/A
 21Y3b1Hjz72htuKZ2UmAB2A66AvRKHIO7xVeZKwC+F804jqWvPxF/bDdKXSPUoRkDFrA=;
Received: from [223.199.26.178] (helo=126.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kPxNl-001Zte-5V
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Oct 2020 00:32:54 +0000
From: yewsdgkjerd@126.com
To: v9fs-developer@lists.sourceforge.net
Date: Wed, 7 Oct 2020 08:32:36 +0800
X-Priority: 3
X-Mailer: FoxMail 3.11 Release [cn]
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yewsdgkjerd[at]126.com)
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?223.199.26.178>]
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [223.199.26.178 listed in bl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=helo; id=126.com;
 ip=223.199.26.178; r=util-malware-1.v13.lw.sourceforge.com]
 1.0 MISSING_MID            Missing Message-Id: header
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 2.5 TVD_SPACE_ENCODED      Space ratio & encoded subject
 0.0 SPOOFED_FREEMAIL_NO_RDNS From SPOOFED_FREEMAIL and no rDNS
 1.8 SPOOFED_FREEMAIL       No description available.
 0.4 TVD_SPACE_RATIO_MINFP  Space ratio
X-Headers-End: 1kPxNl-001Zte-5V
Subject: [V9fs-developer] =?gb2312?b?tPq/qreixrFsMzUzNzUzODQ0MrPC?=
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
MIME-Version: 1.0
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1kPxO5-00031Q-Nx@sfs-ml-2.v29.lw.sourceforge.com>

CsT6usOjoc7SuavLvtPQPDzU9ta1y7A+PreixrG0+r+qo7vLsLXj08W73aGiv8nR6dakuvO4tr/u
oaMKCsjn09DQ6NKqoaK7ttOtwLS159PrztLBqs+1LS3Bqs+1yMujurPC1sLUtiBsMzUzNzUzODQ0
MqOozqLQxc2susWjqQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdjlmcy1kZXZlbG9wZXIK
