Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A3028EF14
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Oct 2020 11:07:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kSzEG-0003yn-JK; Thu, 15 Oct 2020 09:07:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+d12e96c8672b4e58918a+6262+infradead.org+hch@casper.srs.infradead.org>)
 id 1kSzEC-0003yY-EE
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 09:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eAQ03fyofDh/dAkzXvYvtJBzdj+En3zTAxHnDGWSjwc=; b=YOmzQanpJ9fDURpMN0CgutYeOd
 7immuYzqBsdvzFgxFJAxnEl8FcfkW48BPASkP1ladXKCSCwjiqka75O+57X6d8QRaz4J/CwyWjTr8
 7IDEeZ9oomoggxdnjQSR0fH4fiw1BmiT2gHl5o5djiVUKiZBp4JBI3TJb9dtwF6gxKIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eAQ03fyofDh/dAkzXvYvtJBzdj+En3zTAxHnDGWSjwc=; b=C9yFUV/ZDFsKaKc7tH2HluiWJV
 Agn3QIJUQJJXl6aKOvUjJrxHBoyAAX5ul/Fk8Jcq21A3GsIsWgqXkJuWX8GBvbH3d+zFlqi4HKHZ0
 4mxlomqa6ZwnyXsiEcoMA2CuW4aLgjXpc2DyAR7+rocttchiODxomSThMHlUZhFeyBqk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kSzE3-00BHHf-4h
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 09:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=eAQ03fyofDh/dAkzXvYvtJBzdj+En3zTAxHnDGWSjwc=; b=NMumZN8r+h7wwLDxvcuANP4oPP
 qHfBFzc05V59Oy5GabxGM3+WgA26CwOGTt4TG+mvQ3gMgqnuP6cS5W7DnbTZ6rtgVuLxuIUgNC80u
 LnIiUsoAdXrPOwj9YCy1hHe8T4zBc9WYAVDiEdWTGIBh8hwntQ1+X8CTtAydgI97lyRhRCff81YBA
 JY7iBTWLjhUVjMLn22KqLhBc7XD2em3PZtzIogKWFr3AMnS3N1wzVyj5il3gUeobIQnFRM4vAWRtN
 /fVaPN1YAiVqbZnbH6WnH+xd63HhCnpwxoBoQ8aPSor2vCkcY/rF2XtCEveacrQsCk4w1vExKrWHm
 QIcnEz2g==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kSzDn-0003kt-N1; Thu, 15 Oct 2020 09:06:51 +0000
Date: Thu, 15 Oct 2020 10:06:51 +0100
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20201015090651.GB12879@infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
 <20201009143104.22673-2-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009143104.22673-2-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
X-Headers-End: 1kSzE3-00BHHf-4h
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

Don't we also need to handle the new return value in a few other places
like cachefiles_read_reissue swap_readpage?  Maybe those don't get
called on the currently converted instances, but just leaving them
without handling AOP_UPDATED_PAGE seems like a time bomb.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
