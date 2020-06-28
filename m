Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE77220C64C
	for <lists+v9fs-developer@lfdr.de>; Sun, 28 Jun 2020 07:52:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jpQFB-0002hz-IK; Sun, 28 Jun 2020 05:52:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jpQFA-0002hs-31
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 05:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WzFAHa00s0WCVFovWb5WRo2QQdMJ3/tzHBj6w1ECb8U=; b=bUAVEHzN+OmYg2PczMP95NsJpl
 vT2+5RuzH7zK9KQyw5cjScYBD7tj9k7xuFp4wN/iZusjeFK0rd68Ykm6qvGqFXOmvI6naGNEPLi+o
 KG4p85QEhRp3gkwKJXELweLVRVq4vR+k3B/SCmJKDJuXza4TJOwaCh3VvxllM2i8CLi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WzFAHa00s0WCVFovWb5WRo2QQdMJ3/tzHBj6w1ECb8U=; b=K6cGS7a6ORI4dffNQCLw8dKKmF
 Nfm5B7oZxYK9HALWB2F6SW4dAI+cS8bmODX2kws0Rr3aa6a+EckryI58fqWFVMD0WOTetqqqNYdPl
 0rEedUg1TnGIiN14zoegQ29ewviR9zaLa3JEzhX2o2Lcr90u9c1bYHWm7OiBizJalgjc=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jpQF6-003wUq-AV
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 05:52:44 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 7F3F9C01A; Sun, 28 Jun 2020 07:52:25 +0200 (CEST)
Date: Sun, 28 Jun 2020 07:52:10 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200628055210.GA13335@nautica>
References: <20200628020608.36512-1-jianyong.wu@arm.com>
 <20200628020608.36512-3-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200628020608.36512-3-jianyong.wu@arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jpQF6-003wUq-AV
Subject: Re: [V9fs-developer] [RFC PATCH 2/2] 9p: remove unused code in 9p
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
Cc: lucho@ionkov.net, justin.he@arm.com, wei.chen@arm.com, Steve.Capper@arm.com,
 ericvh@gmail.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jianyong Wu wrote on Sun, Jun 28, 2020:
> These code has been commented out since 2007 and lied in kernel
> since then. it's time to remove thest no used code.

Good point, happy to take this - please resend without RFC separately
(the two commits aren't related) after fixing the commit message
(lie/lay is complicated and I'm not sure what should be used there but
lied definitely isn't correct, the qualification doesn't really matter
though so probably simpler to remove; and 'thest no used code' does not
parse)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
