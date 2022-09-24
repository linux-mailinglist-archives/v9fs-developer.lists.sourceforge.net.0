Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B935E8F4B
	for <lists+v9fs-developer@lfdr.de>; Sat, 24 Sep 2022 20:23:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oc9nv-0000Xn-7N;
	Sat, 24 Sep 2022 18:23:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1oc9nt-0000Xh-QA
 for v9fs-developer@lists.sourceforge.net;
 Sat, 24 Sep 2022 18:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=23lhcfycZqlWXN2AMX4GImlCjeGLWA+8QmriHOTlMDg=; b=dvcg8gQOKx/F6+jefY5Lzv3NGv
 SC9W/7/kxq1fk8XpLIXnjTqWm2rV5iTdBuibmHO2/RW+PFlEM9rVLKrGFbNjOPf7+BLgcSdf3rgHY
 tGciDzB3BWvhvsWrW9cjV67ZBnmfM3EUnV2ih4ShyrH0mCPPWBKM/mdQ3ZuWwSdXVMZI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=23lhcfycZqlWXN2AMX4GImlCjeGLWA+8QmriHOTlMDg=; b=XTXKiMBTdfAneADRsKeRaq15En
 06k8/nkH+jl5VB3y32HqA3SUXtQjxPaY9iElCK3adhEhcc1svJzR19syj1xnhlaaktxwHQ0tpeMXP
 eJ+yY9QaWCzTKfJdIJdDc0KxthhLlBqEmZQEIOce+hwZgu7RaKkifikhKiD/r4kDOyuY=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oc9nt-001Vxm-3w for v9fs-developer@lists.sourceforge.net;
 Sat, 24 Sep 2022 18:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=23lhcfycZqlWXN2AMX4GImlCjeGLWA+8QmriHOTlMDg=; b=mXuTM4dIVFJnEoesECSkPSTk/C
 SrQQYTuZ1DwGexNTYZNWA1LUybCYR2wqvejBGVki1HYaeF998orFeXwUC/BM9rQwRwsbLHED/OU+S
 +ED+e1UdOMtcyW8PWbci1EUtrFcGAB/k21BrQJgYFY61mc+L/dRXFE271/buhAhS7Ed2AM3mvIYdQ
 AVUjGAObzQuuL1OcN1ugRzxArTFNaE4AxtcJ+G7hFyRJOFHsDHAWOWSRw7dsVlsIh/WFltDw4OI0t
 aDJYDlVjBxKk40pMebSR9x13j/zaGFBDvsC6vQW9FB/jeFCzTxFOuiCZDzl4PD79pd1wIA7YlGdqF
 IKrwCEkQ==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1oc9ne-003Ozl-0R; Sat, 24 Sep 2022 18:22:50 +0000
Date: Sat, 24 Sep 2022 19:22:50 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <Yy9K+lTiVF5SiwO0@ZenIV>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <20220922151728.1557914-8-brauner@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220922151728.1557914-8-brauner@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22, 2022 at 05:17:05PM +0200, Christian Brauner
 wrote: > +int v9fs_iop_set_acl(struct user_namespace *mnt_userns, struct
 dentry *dentry, > + struct posix_acl *acl, int type) > +{ > + int retval;
 > + void *value = NULL; > + size_t size = 0; > + struct v9fs [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oc9nt-001Vxm-3w
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

On Thu, Sep 22, 2022 at 05:17:05PM +0200, Christian Brauner wrote:

> +int v9fs_iop_set_acl(struct user_namespace *mnt_userns, struct dentry *dentry,
> +		     struct posix_acl *acl, int type)
> +{
> +	int retval;
> +	void *value = NULL;
> +	size_t size = 0;
> +	struct v9fs_session_info *v9ses;
> +	struct inode *inode = d_inode(dentry);
> +
> +	v9ses = v9fs_dentry2v9ses(dentry);
> +
> +	if (acl) {
> +		retval = posix_acl_valid(inode->i_sb->s_user_ns, acl);
> +		if (retval)
> +			goto err_out;
> +
> +		size = posix_acl_xattr_size(acl->a_count);
> +
> +		value = kzalloc(size, GFP_NOFS);
> +		if (!value) {
> +			retval = -ENOMEM;
> +			goto err_out;
> +		}
> +
> +		retval = posix_acl_to_xattr(&init_user_ns, acl, value, size);
> +		if (retval < 0)
> +			goto err_out;
> +	}
> +
> +	/*
> +	 * set the attribute on the remote. Without even looking at the
> +	 * xattr value. We leave it to the server to validate
> +	 */
> +	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT) {
> +		retval = v9fs_xattr_set(dentry, posix_acl_xattr_name(type),
> +					value, size, 0);
> +		goto err_out;
> +	}

> +	if (S_ISLNK(inode->i_mode))
> +		return -EOPNOTSUPP;
> +	if (!inode_owner_or_capable(&init_user_ns, inode))
> +		return -EPERM;

Shouldn't that chunk have been in the very beginning?  As it is, you've
got a leak here...


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
