Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B5028F45A
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Oct 2020 16:07:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kT3uP-0000jZ-Ar; Thu, 15 Oct 2020 14:07:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kT3uJ-0000iz-An
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 14:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y78eONskpyGlU4hGu9lHbAxkXtJjFWlaahMgdLwji6I=; b=LGnKC4ZGikdN+sMy0v9Z5lG5xn
 Kjs/dpESn7EPep0bkOnNHN2a9YWCiBBA+7FnmhrRsT1zpRSBcSU0O2aC1DGM3tsFMCc8PblqLwRSK
 RY7jxOYX2rtr35ixZy0/7Q4mN3IbCm3w/U7Of8h6C48fjo0B/Sr76GU25ZpfKXQtxVqA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y78eONskpyGlU4hGu9lHbAxkXtJjFWlaahMgdLwji6I=; b=O91an++Eyv4bKl5gUgIp4Y6MHD
 oGOe2DgEBofPA41JQqvpm3xQ/GQmvohT9kQo0wdoC7rVhJCfPMIJIViu8mal5yQ5OKLqQJi1ugFOG
 8c9UB6zxZHhGzCNpTdmMqFxw1PaPwwC3fHTQtSDZz1WlBxBhX9vD/pBzQTT3Gbe7kLGo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kT3u5-00Gd4w-LO
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 14:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Y78eONskpyGlU4hGu9lHbAxkXtJjFWlaahMgdLwji6I=; b=B6ppARpmYwCguqRCWuD1mChED9
 0Ynel8CZX3dIMkGMZoYbet00r1q6dl7TVFrN72W9mH/FpfN+ODef1K3iXilMVq8tYAYphLYb8/VGu
 PHTN8gt5nuuzPNOguHRpKav6gSgQOjR75Bkg6sv1yH6A+JtGCEHdNIvQvXxScJftqXb1Cl5dJqpXI
 XWsI4YqRvnmF6acOelUUYNHxNmT1H3xye3fajByyN9b890hcmz5rUOLamoA+B8N262oSAy21FGroD
 Gd7AJKsJRntHU6MURMWkyIrel4h2vcq0Zx/DOdYSjq3RJ8SZOnH+Pwj1hcWEpBYRjYMOMGMJ2pwi9
 u502InRA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kT3tn-0004lO-7n; Thu, 15 Oct 2020 14:06:31 +0000
Date: Thu, 15 Oct 2020 15:06:31 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20201015140631.GZ20115@casper.infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
 <20201009143104.22673-2-willy@infradead.org>
 <20201015090651.GB12879@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015090651.GB12879@infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kT3u5-00Gd4w-LO
Subject: Re: [V9fs-developer] [PATCH v2 01/16] mm: Add AOP_UPDATED_PAGE
 return value
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
Cc: linux-cifs@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Oct 15, 2020 at 10:06:51AM +0100, Christoph Hellwig wrote:
> Don't we also need to handle the new return value in a few other places
> like cachefiles_read_reissue swap_readpage?  Maybe those don't get
> called on the currently converted instances, but just leaving them
> without handling AOP_UPDATED_PAGE seems like a time bomb.

Er, right.  And nobh_truncate_page(), and read_page().  And then I
noticed the bug in cachefiles_read_reissue().  Sigh.

Updated patch series coming soon.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
