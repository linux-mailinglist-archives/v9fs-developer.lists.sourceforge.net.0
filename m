Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF32D5E9C1B
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Sep 2022 10:33:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ocjY4-0002uB-7J;
	Mon, 26 Sep 2022 08:33:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1ocjXn-0002ma-Qh
 for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 08:32:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hJ7ZBiITZRANNfKkuWNw1uuYBl1F2qqf8swy6QP+RYM=; b=Qe8N9OnhglSuiiKkgA8DH4OcTv
 sMfAHURJokuxqfHwYeg3U5Ojj3NjPYy/NGAeB+tzDefuFl3y5GvICeqwTx4tNfE4ClCbxVkGdQcEb
 07+T21Eszcdf7bZacMXgq6xW1z1hGmIy3GT+WCYL3dYgaBkQcuvosOWgH7ysxjz1J2PQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hJ7ZBiITZRANNfKkuWNw1uuYBl1F2qqf8swy6QP+RYM=; b=M20x8fdll5Ice0/IwAGH+0kZMR
 C41Nluruxecyyv7eTzGNyF6mHZX64eHQVLD+BGy7UOXVGBfJmMFpEYohtydcnYlfG+pf4pvh3605Z
 DkpWM/hbmyUFByD03nwi+XLXevuBO3IglkEkXzxLXftn/cGEuTNzbLewHZxFwJHmfEgY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ocjXn-0001Df-87 for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 08:32:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0993861589;
 Mon, 26 Sep 2022 08:32:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 123A0C433D6;
 Mon, 26 Sep 2022 08:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664181160;
 bh=jIb9wQoVjonBrNAO/VRrXJBHSt5Gq3YRsHXRAtqMA7w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d1wBOw4jkugTY9bFITNl/wHRZ9x/oYDdVHuVlAW/XiKpEbZIxsBZYcArQ0gOLC8JI
 bVnX199eONCbbKYKf2e5tHz2xHA7VMHSB3NK0w+gj7Dcye8EbWTG8twIrWaaweLqD/
 Gci1TxvT546h1dMmn0FRh9yBtHpv0tk6u/yPXryvI4ia2c5Jx1sL8+Ax4lH0VyD0zu
 1ctVHMBfZ/G1f1QrO3X3UHg7cv6mCJIUpBMVLnob/J4PxZyYwLtHY1UTOIB5jV8JLW
 7DP7rZ2TWM0YqjLRQZjDFV7zzU3zR0EjpztIMdk3TN869/LSVYGHxdFOzhant8rEIN
 pYoGmfK2b+kmA==
Date: Mon, 26 Sep 2022 10:32:34 +0200
From: Christian Brauner <brauner@kernel.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <20220926083234.diqk6cicudk5snn5@wittgenstein>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <20220922151728.1557914-7-brauner@kernel.org>
 <Yy9E4T0HT6hEmpoZ@ZenIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yy9E4T0HT6hEmpoZ@ZenIV>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Sep 24, 2022 at 06:56:49PM +0100, Al Viro wrote: >
 On Thu, Sep 22, 2022 at 05:17:04PM +0200, Christian Brauner wrote: > > >
 -static struct posix_acl *__v9fs_get_acl(struct p9_fid *fid, char *n [...]
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ocjXn-0001Df-87
Subject: Re: [V9fs-developer] [PATCH 06/29] 9p: implement get acl method
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
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Seth Forshee <sforshee@kernel.org>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Sep 24, 2022 at 06:56:49PM +0100, Al Viro wrote:
> On Thu, Sep 22, 2022 at 05:17:04PM +0200, Christian Brauner wrote:
> 
> > -static struct posix_acl *__v9fs_get_acl(struct p9_fid *fid, char *name)
> > +static int v9fs_fid_get_acl(struct p9_fid *fid, const char *name,
> > +			    struct posix_acl **kacl)
> >  {
> >  	ssize_t size;
> >  	void *value = NULL;
> >  	struct posix_acl *acl = NULL;
> >  
> >  	size = v9fs_fid_xattr_get(fid, name, NULL, 0);
> > -	if (size > 0) {
> > -		value = kzalloc(size, GFP_NOFS);
> > -		if (!value)
> > -			return ERR_PTR(-ENOMEM);
> > -		size = v9fs_fid_xattr_get(fid, name, value, size);
> > -		if (size > 0) {
> > -			acl = posix_acl_from_xattr(&init_user_ns, value, size);
> > -			if (IS_ERR(acl))
> > -				goto err_out;
> > -		}
> > -	} else if (size == -ENODATA || size == 0 ||
> > -		   size == -ENOSYS || size == -EOPNOTSUPP) {
> > -		acl = NULL;
> > -	} else
> > -		acl = ERR_PTR(-EIO);
> > +	if (size <= 0)
> > +		goto out;
> >  
> > -err_out:
> > +	/* just return the size */
> > +	if (!kacl)
> > +		goto out;
> 
> How can that happen?  Both callers are passing addresses of local variables
> as the third argument.  And what's the point of that kacl thing, anyway?
> Same callers would be much happier if you returned acl or ERR_PTR()...

Yeah, my bad. I had an initial draft just to get something to test where
I returned it through an return argument instead of the function. Seems
I missed to fix that spot. Thanks, fixed and also massaged the callers a bit.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
