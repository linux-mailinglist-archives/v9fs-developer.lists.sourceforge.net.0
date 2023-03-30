Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B81F76CFA9B
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 07:14:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phkcJ-0004m9-Oi;
	Thu, 30 Mar 2023 05:14:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1phkcH-0004m2-V5
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 05:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=inpkiwRXcocPeBnpK632bQIfhJ2DBpDoZuzpv2mqVfM=; b=I+y1UtooCMEnjmXV5WbaPejA+B
 W63zqwQyt648mMhgBoi8Gh18hjkW1axbBMwTaoC+GL6h2IS4xbGHd3nus3yiCVlMFHCiGD/5+z6DA
 2nyhre1ijF1NHnS6vI1AAn+i7qOw34jNgIY9ntS+iqIsH0IHkwLBlz7OLQkxCHfcYQnI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=inpkiwRXcocPeBnpK632bQIfhJ2DBpDoZuzpv2mqVfM=; b=XL9Tb4mEf+nK1yAzR4EXWCpxyP
 EO/8axJoHkRwNHJ4MKQYU+3KbbTMq7aFTQertkS1MeBJfvzVE1PAEiihvWcDCbJSwvfoSqhYWNwZk
 JCDGeTcsZHaFuDDeuHVd8kGRLOcFeI6gNP8tUCmNZQP33I/DDLVd8qYPuTmBJAyLNCUc=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phkcC-009AFk-L9 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 05:14:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3315CB8243B;
 Thu, 30 Mar 2023 05:14:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7043CC433D2;
 Thu, 30 Mar 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680153251;
 bh=+AO+4TXm7+ntP+/nBfZasS7S5uDHsYLHj2Buok4wimI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tEqPWrDQSJEi40VeqmkuuofD6jN9KR8CLr9nlFFNuskQ3TMEKJtccZoFnjVNUrgGs
 Uoc1irsgIgiFg/rCw/vwaZwnlSl8wxVJpMZK58Qug7+OLNWk39mPw3lHRJPrZJ04i8
 VFa3Xonr1LXyqgAblXElHVZg3sGHHS9GeCAZv+7p92yeijOrX8fPaH+zM7yiKdQkMP
 xBDq9tc857WWJKIy6dCL6y0llUETY7Ri2DKVmtmAEZ+P5Cho+KWsatvXFfKCBVLWIo
 XmxjkNznPYyTUOmnnmW9f5OocpWomZew6/nW/2wt0fyXrNw/1Khp+Y81hQePjMHcAr
 x2ZzHHWiXTYCg==
Date: Thu, 30 Mar 2023 07:14:04 +0200
From: Christian Brauner <brauner@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20230330-quickly-slinky-06d441dbb61b@brauner>
References: <20230330000157.297698-1-jlayton@kernel.org>
 <20230330000340.GA2189@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230330000340.GA2189@lst.de>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 30, 2023 at 02:03:40AM +0200, Christoph Hellwig
 wrote: > > - v9fs_qid2ino(&st.qid), dt_type(&st)); > > + v9fs_qid2ino(&st.qid),
 v9fs_dt_type(&st)); > > This adds an overly long line. Also [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1phkcC-009AFk-L9
Subject: Re: [V9fs-developer] [PATCH v2] fs: consolidate dt_type() helper
 definitions
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Phillip Potter <phil@philpotter.co.uk>, linux-fsdevel@vger.kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, Joel Becker <jlbec@evilplan.org>,
 Tejun Heo <tj@kernel.org>, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Mar 30, 2023 at 02:03:40AM +0200, Christoph Hellwig wrote:
> > -					 v9fs_qid2ino(&st.qid), dt_type(&st));
> > +					 v9fs_qid2ino(&st.qid), v9fs_dt_type(&st));
> 
> This adds an overly long line.  Also renaming the v9fs dt_type seems
> like it should be a prep patch.
> 
> > +/* Relationship between i_mode and the DT_xxx types */
> 
> This comment seems a bit terse.

Agreed. Would be nice if we could just do proper kernel doc. Even for
static inline functions it can't hurt.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
