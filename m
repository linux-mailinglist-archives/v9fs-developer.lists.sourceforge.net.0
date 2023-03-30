Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7A36CF82D
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Mar 2023 02:23:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1phg4e-0006n0-Eb;
	Thu, 30 Mar 2023 00:23:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1phg4a-0006mp-2a
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 00:23:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6wWwovUwR+JwzoTkdwkMZoIBOjkz4+Gdt1JHUvV9Aws=; b=aDwXYDVu99V762JekeoFJUGBYl
 aYCQC9QQxQcGc0/P4raaGNXLk/Z0QIiYEOevy8Pr85yxL/89SQ5sz0EBAmdo3iUoS1eW3UKpcR20x
 A+81PSaZRSXfmUbiOyjmqZFvgJwnKHcL7JQbh+kMYiEg++JKl7cM3Sxle5PF7oMpHCgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6wWwovUwR+JwzoTkdwkMZoIBOjkz4+Gdt1JHUvV9Aws=; b=kmCGRpLetV/yfUtwN3MvIAVq1G
 3wvqbT/C51eclYnqkltHR7yHGfIiM68HPpxrmIY3MA8O6VNbNzEW/+VUtFygS70GZ99rHt7V6RaFd
 A4hFAkdu++Az7nJe+lKqWINdlF7FlOX2IbwGyq/EnG9M3Uw/dbctarSsfToDILASOjP8=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phg4Y-0003DE-37 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Mar 2023 00:23:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 921C268C7B; Thu, 30 Mar 2023 02:03:40 +0200 (CEST)
Date: Thu, 30 Mar 2023 02:03:40 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20230330000340.GA2189@lst.de>
References: <20230330000157.297698-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230330000157.297698-1-jlayton@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > - v9fs_qid2ino(&st.qid), dt_type(&st));
 > + v9fs_qid2ino(&st.qid),
 v9fs_dt_type(&st)); This adds an overly long line. Also renaming the v9fs
 dt_type seems like it should be a prep patch. > +/* Relationship between
 i_mode and the DT_xxx types */ 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1phg4Y-0003DE-37
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christian Brauner <brauner@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Phillip Potter <phil@philpotter.co.uk>, linux-fsdevel@vger.kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, Joel Becker <jlbec@evilplan.org>,
 Tejun Heo <tj@kernel.org>, v9fs-developer@lists.sourceforge.net,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

> -					 v9fs_qid2ino(&st.qid), dt_type(&st));
> +					 v9fs_qid2ino(&st.qid), v9fs_dt_type(&st));

This adds an overly long line.  Also renaming the v9fs dt_type seems
like it should be a prep patch.

> +/* Relationship between i_mode and the DT_xxx types */

This comment seems a bit terse.

> +static inline unsigned char dt_type(umode_t mode)
> +{
> +	return ((mode) & S_IFMT) >> S_DT_SHIFT;

No need for the inner braces.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
