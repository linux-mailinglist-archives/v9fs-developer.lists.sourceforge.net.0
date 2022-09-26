Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8335E9B38
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Sep 2022 09:51:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ocitK-0004zY-PK;
	Mon, 26 Sep 2022 07:51:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1ocitJ-0004zS-Pe
 for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 07:51:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nZ/QAWwaYAHdFH4gC+aEdhdWusq8ti201sKUvBUS40Y=; b=AJjgxudGp9mI6L9wqL2k+cY7gE
 fQyuwh7XdiWSlxVb1JPX4Q0UmlLjArNCjf+Df7E3Ys4OpXfGep4OIeQgjobP/djj9VI2DwDhyUipo
 qz64IhTOABcJi9Up2nRapf/b4s6JwbdM8v+FEFsq0OO4sNNGLYHKSTrEZmolFbdJPSV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nZ/QAWwaYAHdFH4gC+aEdhdWusq8ti201sKUvBUS40Y=; b=gBQPqobDtxs3aS6j+OqFT9MWVV
 GynfFeki6VebRRncXGu+7RB4wXX5ZzJcKbTrHZTKuqXO9X/6R8wVyHpw+lwQVlgcibdxJ/K9cfhpJ
 GCWCiUS5wkoRf2VzmfnJ1GXEmarCqn1Aw0cgQFEqDRAPrbJTtx7E6I6tOIyMC54UdnOA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ocitV-0007Ia-Nx for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 07:51:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5E32A60C16;
 Mon, 26 Sep 2022 07:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8CA4C433C1;
 Mon, 26 Sep 2022 07:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664178667;
 bh=Br+kEjrCm2Xv3HFYwhTAWI+LQ3pOYKeHDiJTqf2tbAQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nJq9JmmPBUxK+hw1ySG+SLXF9TgzInmhGIEj8L6ObtlX8QAxiIRJBSqXR+K2OhBnq
 qYOdeTqBvR/Se7xFtKwiEP60Pm3x43RNOFlzgluanhKF9f3t1dFyWPZhkXIGlI6Kvb
 sLHjS/WfOzjFeu1bBQgeD6KIHUdpLEiiUxwWUAlu57B/N2Sk1PBCYEn4vN7W1d4mNj
 VElnMXfBvmeaGXGDPRrGTVoY0hT10is+8bSFZgH+awbMUk/3XQLbY+MfiLBX4ROW6Y
 tcl7XJS6Q7mw7GBSD2ublYeUtQk/vsZiNRcL/k8AH8iuMwtXDeKuAbSlO8QdUcsh+W
 P4qbFg1SuP2FQ==
Date: Mon, 26 Sep 2022 09:51:02 +0200
From: Christian Brauner <brauner@kernel.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <20220926075102.xfn373uyjsoqm7bi@wittgenstein>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <20220922151728.1557914-8-brauner@kernel.org>
 <Yy9K+lTiVF5SiwO0@ZenIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yy9K+lTiVF5SiwO0@ZenIV>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Sep 24, 2022 at 07:22:50PM +0100, Al Viro wrote: >
 On Thu, Sep 22, 2022 at 05:17:05PM +0200, Christian Brauner wrote: > > >
 +int v9fs_iop_set_acl(struct user_namespace *mnt_userns, struct dent [...]
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ocitV-0007Ia-Nx
Subject: Re: [V9fs-developer] [PATCH 07/29] 9p: implement set acl method
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

On Sat, Sep 24, 2022 at 07:22:50PM +0100, Al Viro wrote:
> On Thu, Sep 22, 2022 at 05:17:05PM +0200, Christian Brauner wrote:
> 
> > +int v9fs_iop_set_acl(struct user_namespace *mnt_userns, struct dentry *dentry,
> > +		     struct posix_acl *acl, int type)
> > +{
> > +	int retval;
> > +	void *value = NULL;
> > +	size_t size = 0;
> > +	struct v9fs_session_info *v9ses;
> > +	struct inode *inode = d_inode(dentry);
> > +
> > +	v9ses = v9fs_dentry2v9ses(dentry);
> > +
> > +	if (acl) {
> > +		retval = posix_acl_valid(inode->i_sb->s_user_ns, acl);
> > +		if (retval)
> > +			goto err_out;
> > +
> > +		size = posix_acl_xattr_size(acl->a_count);
> > +
> > +		value = kzalloc(size, GFP_NOFS);
> > +		if (!value) {
> > +			retval = -ENOMEM;
> > +			goto err_out;
> > +		}
> > +
> > +		retval = posix_acl_to_xattr(&init_user_ns, acl, value, size);
> > +		if (retval < 0)
> > +			goto err_out;
> > +	}
> > +
> > +	/*
> > +	 * set the attribute on the remote. Without even looking at the
> > +	 * xattr value. We leave it to the server to validate
> > +	 */
> > +	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT) {
> > +		retval = v9fs_xattr_set(dentry, posix_acl_xattr_name(type),
> > +					value, size, 0);
> > +		goto err_out;
> > +	}
> 
> > +	if (S_ISLNK(inode->i_mode))
> > +		return -EOPNOTSUPP;
> > +	if (!inode_owner_or_capable(&init_user_ns, inode))
> > +		return -EPERM;
> 
> Shouldn't that chunk have been in the very beginning?  As it is, you've
> got a leak here...

Good catch, I probably messed up the merge conflict resolution in my
last rebase... Thanks for spotting!


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
