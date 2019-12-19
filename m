Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B241260E3
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Dec 2019 12:34:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ihu4f-0004wx-V8; Thu, 19 Dec 2019 11:34:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1ihu4e-0004wh-9b
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Dec 2019 11:34:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GxOl/LOmuAmhG5SyERwPiSKFtwO9kL91J8GWHR/65iI=; b=OnnbxGA8jOVWQsES0KT6L8R1F5
 xOZq+0RXJbqw8FSwKXkkpJARLk9xtavSKeeKgMa05DneEseAJA/8wS8BJIOlJgc3iD8BBnG1mqS+r
 ZA1YEZ+kAQy027iWzEuxTF1WmBQ7sFV5LMq+Xd0ux0TOSeEfn0hvreDTqjng3WE1Sb1c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GxOl/LOmuAmhG5SyERwPiSKFtwO9kL91J8GWHR/65iI=; b=bgC2sJyrLXdGewEjxC1ZaW3Nfl
 8G/ViX7aUNJUaQmK/A5hhIIfX7w0ZbIYOFz5mzFxs4B/3hXmT8yjYUGJa+n3ErpPSb/XnsJtK4R7a
 UhMxtHDASZA24MBNofIhEPr+veHfVmSQ+buMbSz4/np2cBrQO/qE2ekuFJYbawBFY6Zc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ihu4a-0072XQ-6K
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Dec 2019 11:34:32 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 93699C009; Thu, 19 Dec 2019 12:34:21 +0100 (CET)
Date: Thu, 19 Dec 2019 12:34:06 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: zhengbin <zhengbin13@huawei.com>
Message-ID: <20191219113406.GA22811@nautica>
References: <1576752517-58292-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576752517-58292-1-git-send-email-zhengbin13@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ihu4a-0072XQ-6K
Subject: Re: [V9fs-developer] [PATCH RESEND] 9p: Remove unneeded semicolon
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

zhengbin wrote on Thu, Dec 19, 2019:
> Fixes coccicheck warning:
> 
> fs/9p/vfs_inode.c:146:3-4: Unneeded semicolon
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>

Taken, will be in linux-next in the next few days.

Please note I won't submit a pull request to Linus if I only have this
so it might take an extra couple of months to get in depending on what
patches get sent.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
