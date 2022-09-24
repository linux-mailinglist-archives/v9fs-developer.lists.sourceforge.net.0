Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE055E8F2B
	for <lists+v9fs-developer@lfdr.de>; Sat, 24 Sep 2022 20:14:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oc9fD-0007jG-SZ;
	Sat, 24 Sep 2022 18:14:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1oc9fC-0007jA-VK
 for v9fs-developer@lists.sourceforge.net;
 Sat, 24 Sep 2022 18:14:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JCjOC+kJyI3LoFk1HZucLeLgATg1WlshxOETKBbIdAU=; b=hGnnPtRpl4CcDxFZLTCv9i/WwN
 Cw7imtnpIWHxSWL/jtxcv5SY/XOTxyE7xJ0PktvmbQFQh19LxfhYI475OjCaTC4xMn/C7t44in8eM
 jS2CI7sjNJgCe5d9mL9CaRWvXbdZva+sQB0hjxf2y0h8pljMFYi3gqUWTEihfeg9NYvs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JCjOC+kJyI3LoFk1HZucLeLgATg1WlshxOETKBbIdAU=; b=ZjLMtiNcKmDNZx0Qfx6fH7QUrs
 L7JTR8y7IRKa8NRaBol++gDhsgrxglnWGEZd5HLKUjUI/8Vhun7u4fEcLWPomPmRqtFrl1lcp6IFE
 V+ynQYHeNyNiKM61Blp0ELjR9m1ucM0ah8pkcZvn4xEjUGVvVVyTVGfEn610EgTll8Vk=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oc9fB-0001k6-7T for v9fs-developer@lists.sourceforge.net;
 Sat, 24 Sep 2022 18:14:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JCjOC+kJyI3LoFk1HZucLeLgATg1WlshxOETKBbIdAU=; b=XviR4iWx60orBCR2ELvAaXZ7AM
 XiUodkRXKNvjaZmZpU1eTPEG0673m6uUO9JXV6zivLmgPJPex1Zixn4rV/S5Qjwn/CXS/sWTItCOq
 4yS6CR/cWFM7z2/NsEnlImYbZ7ATjSWsBwAS7M9U0s+HHnoKZBn9u/ovcgpIde9i11ysFOrkwHzlB
 RuO2vlmeiuwUABNlR3hauHR5mywxSzpmkySZYoRAE/ZhnyAUjeQo+oV2AT7wtpE7hF/rjnRtRvnRV
 g1XeMGVMbxT4T4SaLoMsEjLnw9VmmYPMawGW4p5JvfNRaynFJtvR4IC72Q1usQ7k16DC8p3xSWpMu
 8CUz6ApQ==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1oc9ey-003OpL-2Q; Sat, 24 Sep 2022 18:13:52 +0000
Date: Sat, 24 Sep 2022 19:13:52 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <Yy9I4GQEgH1cj/ke@ZenIV>
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
 wrote: > + struct v9fs_session_info *v9ses; > + struct posix_acl *acl = NULL; 
 > + > + v9ses = v9fs_dentry2v9ses(dentry); > + /* We allow set [...] 
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
X-Headers-End: 1oc9fB-0001k6-7T
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
> +	struct v9fs_session_info *v9ses;
> +	struct posix_acl *acl = NULL;
> +
> +	v9ses = v9fs_dentry2v9ses(dentry);
> +	/* We allow set/get/list of acl when access=client is not specified. */
> +	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT)
> +		acl = v9fs_acl_get(dentry, posix_acl_xattr_name(type));
> +	else
> +		acl = v9fs_get_cached_acl(d_inode(dentry), type);
> +	if (IS_ERR(acl))
> +		return acl;
> +
> +	return acl;

*blink*
	1.  Set acl to NULL, just in case.
	2.  Set acl to either one expression or another
	3.  If acl is an ERR_PTR(something), return acl
	4.  buggrit, return acl anyway.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
