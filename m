Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76749400C9A
	for <lists+v9fs-developer@lfdr.de>; Sat,  4 Sep 2021 20:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ybHZZLPjx5xCafxX5FuE92x4g7XhIJxPjtIlYHi9xWI=; b=Djw/HC3Ft4L43/L4Y161SMJdmo
	UaxRD69O2GZySK5P4v9qXxyRuQpSB3cbsqp3m0GofhLc9lD/S3uYPIvoe6viFIl2OpBqbXSbz/E1m
	jWZTmb2QlCkrXAgXPoT5pBImlUGvM6g+AvBLrhyediCJeEUia4z7jW95FkVDg1/wPArI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mMaRT-0007jy-2q; Sat, 04 Sep 2021 18:31:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <61ea0f0faaaaf26dd3c762eabe4420306ced21b9@lizzy.crudebyte.com>)
 id 1mMaRM-0007ja-Sm
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 18:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=blpZE9y4KzRJRRxWx4qpHNucdgQj3S3fwwnHKLMpPG0=; b=dzZ+kjEKMtmGDNrJnN9Wx9EZ6y
 VAx3RycIDBeYuwgkYs1IgJwpRRkLI2uYSH1zYGTlrPUAC1ULR0/356mIlAYZ7TdZGHehpwP2Prd9B
 IvBXDtcC9IBpTWRI986eJRwnJEH6Y20mbZGNy6D4LhuBUcaxe0kNVrUFV/SRXYsd5DJM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Subject:Date:From:Message-Id:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=blpZE9y4KzRJRRxWx4qpHNucdgQj3S3fwwnHKLMpPG0=; b=U3I0b0t0bjUKnCokrYdbjsFwQl
 Vd6rpu3x3ZG8MFyh0DipXxro9DUDPha7z2zpm0r15QLwCXynASslB0kxHQww1DvOPgJffujxrPO5o
 lk/iC3sYG/EkLyixrt3qeN79J8WRGoax0I4yfJZHj8WkJFQol1iWYQmM3Dw/4B7xjCGI=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mMaRM-00EqBV-EU
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Sep 2021 18:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Cc:To:Subject:Date:From:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Content-ID:
 Content-Description; bh=blpZE9y4KzRJRRxWx4qpHNucdgQj3S3fwwnHKLMpPG0=; b=ieA8U
 Idt+HQVOd7C2K4xIZXfC1UcTgo1ABkqFi+hMq3qEi394pm71n/sFnBsPEudmtKnV3lah3U+9fgmYY
 XXZSURrAibDEShM1k5Du80Mg5/MJ1x7dAqzCgipL+t0klfCnLyhNrtvpJklnlRdLlgxSwqL8X22LT
 a/gdk4ImtpZMOW2MZVcYDyUyWmXmyLGbYWaKtVDAPd1dvs/MJ196BQz9pzN16w3qs8XQ9F8GuOiG1
 YEA5lGD9ZeWeYBPga07a81BKd7CGbxiycEhMkufjPgiK5CmDCIeE0lVEiPtdZh6zbsawcoHOFtZIK
 eQR+qq0Slo0S0gHFPPk9ciIr5XAiA==;
Message-Id: <cover.1630770829.git.linux_oss@crudebyte.com>
Date: Sat, 4 Sep 2021 17:53:49 +0200
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  As previously discussed, many users are not aware about the
 'msize' option of the Linux 9p client and the negative impact it can have
 if its value is too low. This series raises the default value for [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mMaRM-00EqBV-EU
Subject: [V9fs-developer] [PATCH 0/2] net/9p: increase default msize
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>, netdev@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, Latchesar Ionkov <lucho@ionkov.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

As previously discussed, many users are not aware about the 'msize' option
of the Linux 9p client and the negative impact it can have if its value is
too low. This series raises the default value for 'msize' from 8k to 128k.

Later on in separate series, the current capping of user supplied values for
'msize' of currently max. 512k should be addressed, which is likewise too
small: https://lists.gnu.org/archive/html/qemu-devel/2021-02/msg06343.html

Christian Schoenebeck (2):
  net/9p: use macro to define default msize
  net/9p: increase default msize to 128k

 net/9p/client.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

-- 
2.20.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
