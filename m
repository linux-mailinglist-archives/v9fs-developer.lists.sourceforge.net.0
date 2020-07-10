Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 577D921B3B3
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jul 2020 13:09:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jtqu6-0007Ui-4d; Fri, 10 Jul 2020 11:09:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jtqu4-0007Ub-Ui
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 11:09:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IM6jxQfKOmb87OreuR2hv+b7q66aVE3zXYinfPQDxAM=; b=dOPQosZ1hMeiqR1bCviuQkymAv
 +HHxa2pK+/z4H5bpAMRpq9P5A9krQNwMFnBUxZUbOXn6Fwss5JWOTpSnpV6C+mTaM01P0ubpKarxR
 I3RhvelKZJRbzz8rBbWmwAeBph6p3yn1M5d2Sy8yTx8F4+VrbWbSW5EQIvo2qAk7Boss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IM6jxQfKOmb87OreuR2hv+b7q66aVE3zXYinfPQDxAM=; b=hd0AUMghjjercS1OINuXhaBMz2
 8B4X6dEftFE+QPiagzojsjq/R4xwhfS5nP34oM/E9eGdSANTTASBASXG2Wd0MYhSBCUl8oeAXvqKy
 7yOq3hhRXzurwS8840bxDPT6kLN1ofqlgnyUPJetuhgpbfVYxX5baRTZ9oTIr1guM+tw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtqtz-001vhD-Be
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 11:09:16 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 2F266C009; Fri, 10 Jul 2020 13:09:05 +0200 (CEST)
Date: Fri, 10 Jul 2020 13:08:50 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200710110850.GB17924@nautica>
References: <20200710101548.10108-1-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200710101548.10108-1-jianyong.wu@arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtqtz-001vhD-Be
Subject: Re: [V9fs-developer] [PATCH v4] 9p: retrieve fid from file when
 file instance exist.
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

Jianyong Wu wrote on Fri, Jul 10, 2020:
> In the current setattr implementation in 9p, fid is always retrieved
> from dentry no matter file instance exists or not. If so, there may be
> some info related to opened file instance dropped. So it's better
> to retrieve fid from file instance when it is passed to setattr.
> 
> for example:
> fd=open("tmp", O_RDWR);
> ftruncate(fd, 10);
> 
> The file context related with the fd will be lost as fid is always
> retrieved from dentry, then the backend can't get the info of
> file context. It is against the original intention of user and
> may lead to bug.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---


For next time, you can add arbitrary comments (e.g. describe briefly
differences from previous versions) after the --- line.

For others, this inits fid to NULL in both functions; thanks for picking
it up I'll refresh the patch.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
