Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D46275E8F16
	for <lists+v9fs-developer@lfdr.de>; Sat, 24 Sep 2022 19:57:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oc9Or-0008QR-3b;
	Sat, 24 Sep 2022 17:57:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1oc9Oo-0008QL-Rx
 for v9fs-developer@lists.sourceforge.net;
 Sat, 24 Sep 2022 17:57:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lt6D1A3ndshgspWp6qBlwmMK4P4FZw6X5SqG/DnPQJY=; b=RCkAZSJVgq+GMzP6i8BfjUAHiK
 2r5ByoMPM9hVSsr9300iphGE2o8XNTse/sC8/RX+jmpEjsfWwCkqONk8SO3sJ0D9oi/LrqXQbkCcW
 MtelDeSZesJ9ar9x47gYfeUu1NQOua38v6mJFvL0A0yKCqBzBDcHRQMkVi+T1iC0JUg4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lt6D1A3ndshgspWp6qBlwmMK4P4FZw6X5SqG/DnPQJY=; b=fYAAnDnOOW/goG67SKB41RDdqK
 vcMWbQqdw6mR4IGTK6v2boywTvYwKir1VNlFK7Ozmm5daBIUvJ3pcEOemScmcUBwv1yWGmou6qlRP
 v/4rCc1X+xygjV2d4s834udfZzicCoLS/XpCU9B/V5lKOjAYOpYKk5BBNprYthgufkac=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oc9Om-00010O-L0 for v9fs-developer@lists.sourceforge.net;
 Sat, 24 Sep 2022 17:57:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lt6D1A3ndshgspWp6qBlwmMK4P4FZw6X5SqG/DnPQJY=; b=H6sZbo8J35NFdWjQhLRvCF8UIi
 akPYvEAzUIAdxGbmUEvUxVyY5etA7WJAanszF568vRIrLnsDlHgGEIHl66HOMQp6HeDsTHE0csmZS
 hTc3sGc5NUDB8vs5Sw/PlopT4Yv/n/guvvQeyNHszpV1zo3MRyrg1FUooYmFaiYRxVeBqS/Rk4kL1
 6ZpZSVUW9W6sjU7Z/y8IKlqGg/5etXEA40kWbZekWK5n4QpiLC413C488eulns66dJlNRrDtQcEvA
 ZVamt+RX6TM7O6uYjMb1miKa5+HH9WMLbAOvOmaukiybwSh9pvMHEBTD5qE5vfRBtwZJxrNxDrHRN
 hypY4Q5A==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1oc9OT-003OQO-1x; Sat, 24 Sep 2022 17:56:49 +0000
Date: Sat, 24 Sep 2022 18:56:49 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <Yy9E4T0HT6hEmpoZ@ZenIV>
References: <20220922151728.1557914-1-brauner@kernel.org>
 <20220922151728.1557914-7-brauner@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220922151728.1557914-7-brauner@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22, 2022 at 05:17:04PM +0200, Christian Brauner
 wrote: > -static struct posix_acl *__v9fs_get_acl(struct p9_fid *fid, char
 *name) > +static int v9fs_fid_get_acl(struct p9_fid *fid, const char *name,
 > + struct posix_acl **kacl) > { > ssize_t size; > void [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oc9Om-00010O-L0
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

On Thu, Sep 22, 2022 at 05:17:04PM +0200, Christian Brauner wrote:

> -static struct posix_acl *__v9fs_get_acl(struct p9_fid *fid, char *name)
> +static int v9fs_fid_get_acl(struct p9_fid *fid, const char *name,
> +			    struct posix_acl **kacl)
>  {
>  	ssize_t size;
>  	void *value = NULL;
>  	struct posix_acl *acl = NULL;
>  
>  	size = v9fs_fid_xattr_get(fid, name, NULL, 0);
> -	if (size > 0) {
> -		value = kzalloc(size, GFP_NOFS);
> -		if (!value)
> -			return ERR_PTR(-ENOMEM);
> -		size = v9fs_fid_xattr_get(fid, name, value, size);
> -		if (size > 0) {
> -			acl = posix_acl_from_xattr(&init_user_ns, value, size);
> -			if (IS_ERR(acl))
> -				goto err_out;
> -		}
> -	} else if (size == -ENODATA || size == 0 ||
> -		   size == -ENOSYS || size == -EOPNOTSUPP) {
> -		acl = NULL;
> -	} else
> -		acl = ERR_PTR(-EIO);
> +	if (size <= 0)
> +		goto out;
>  
> -err_out:
> +	/* just return the size */
> +	if (!kacl)
> +		goto out;

How can that happen?  Both callers are passing addresses of local variables
as the third argument.  And what's the point of that kacl thing, anyway?
Same callers would be much happier if you returned acl or ERR_PTR()...

> +	value = kzalloc(size, GFP_NOFS);
> +	if (!value) {
> +		size = -ENOMEM;
> +		goto out;
> +	}
> +
> +	size = v9fs_fid_xattr_get(fid, name, value, size);
> +	if (size <= 0)
> +		goto out;
> +
> +	acl = posix_acl_from_xattr(&init_user_ns, value, size);
> +	if (IS_ERR(acl)) {
> +		size = PTR_ERR(acl);
> +		goto out;
> +	}
> +	*kacl = acl;
> +
> +out:
>  	kfree(value);
> +	return size;
> +}

Compare that (and callers of that helper) with

static struct posix_acl *v9fs_fid_get_acl(struct p9_fid *fid, const char *name)
{
	ssize_t size;
	void *value;
	struct posix_acl *acl;

	size = v9fs_fid_xattr_get(fid, name, NULL, 0);
	if (size <= 0)
		return ERR_PTR(size);

	value = kzalloc(size, GFP_NOFS);
	if (!value)
		return ERR_PTR(-ENOMEM);

	size = v9fs_fid_xattr_get(fid, name, value, size);
	if (size > 0)
		acl = posix_acl_from_xattr(&init_user_ns, value, size);
	else
		acl = ERR_PTR(size);
	kfree(value);
	return acl;
}

static struct posix_acl *v9fs_acl_get(struct dentry *dentry, const char *name)
{
	struct p9_fid *fid;
	struct posix_acl *acl;

	fid = v9fs_fid_lookup(dentry);
	if (IS_ERR(fid))
		return ERR_CAST(fid);

	acl = v9fs_fid_get_acl(fid, name);
	p9_fid_put(fid);
  	return acl;
}
  
static struct posix_acl *__v9fs_get_acl(struct p9_fid *fid, const char *name)
{
	struct posix_acl *acl = v9fs_fid_get_acl(fid, name);

	if (IS_ERR(acl)) {
		if (acl == ERR_PTR(-ENODATA) || acl == ERR_PTR(-ENOSYS) ||
		    acl == ERR_PTR(-EOPNOTSUPP))
			acl = NULL;
		else
			acl = ERR_PTR(-EIO);
	}
	return acl;
}


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
