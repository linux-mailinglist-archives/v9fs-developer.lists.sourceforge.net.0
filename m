Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4663492B25
	for <lists+v9fs-developer@lfdr.de>; Tue, 18 Jan 2022 17:24:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9rHL-00084X-N8; Tue, 18 Jan 2022 16:24:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+4fe6c3c60fc7db690b35+6722+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1n9rHJ-00084I-Jd
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 16:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jhVRXbKHsK5/+VUWx8p4vGxs4G6MvUWC+Xam2qsrUoE=; b=jsnrRYB9TAZmpqV6KYb1IHCZsb
 0mcwd3V8LBYQznij6KIUBaXqd2NOBlg7G9i2c5KJB3/ZH1cTCzNaul3S7iKvOQosaoX4ezukIDnFp
 kgF50HcTn7+tmmc3mPL5lq7skvpxQiIQt+AtCjrKjw7zSp5csklM9gHwO5yVvxyITcCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jhVRXbKHsK5/+VUWx8p4vGxs4G6MvUWC+Xam2qsrUoE=; b=muzkTyFl4CE3pMS8aDHzsW6nGA
 UmPXgLslhslD03ThfknPleTAAfgNIfnMwHrEMQGurUIrMThBp+QpyVtkHdF2KM1/Gi60BGFwyvq7g
 bjvKPe5dVfqMRmUrw6xmpc0keddIHe2xhbJvmBYbzBvnhMVY6NRJbrQT4eGyKIsWEUk4=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9rHG-0007Mw-Gh
 for v9fs-developer@lists.sourceforge.net; Tue, 18 Jan 2022 16:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jhVRXbKHsK5/+VUWx8p4vGxs4G6MvUWC+Xam2qsrUoE=; b=B8L/4HBkD4afSUo3u1LAzrrP2t
 q8E5GkLH53P9rQfA62suEcPUjnSLlnYuFQ98fuuil6qNWtXVBg7kqKwOia0sJByKWJ9pVTPpX19VZ
 /6fqUXVdLAxhTI9t06zRdMQhjNaxrUn4ABt5KgoooVH7rlx07IBIob7BEKJ5z59dZSP7C7Ti2ly/U
 gkAMZW5YhxoZwnd1aWUsp46fJbCq76LM543tiLUnj43CYV3Lf0PIrjloqr6d0T3BsNXcu4WpLdW5t
 igzmwLo/Ex2fL/Ssmy4mSMCfB9qQGG4XLW9fypo+nYutWP3oSxrlA4ICjuZTpp8gXHCx2NB8a1KHB
 3r/VkXjQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1n9rGs-002EPo-4r; Tue, 18 Jan 2022 16:23:46 +0000
Date: Tue, 18 Jan 2022 08:23:46 -0800
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YebpktrcUZOlBHkZ@infradead.org>
References: <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
 <164251409447.3435901.10092442643336534999.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <164251409447.3435901.10092442643336534999.stgit@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 18, 2022 at 01:54:54PM +0000,
 David Howells wrote:
 > Add an IS_KERNEL_FILE() macro to test the S_KERNEL_FILE inode flag as is
 > common practice for the other inode flags[1]. Please fix the flag to have
 a sensible name first, as the naming of the flag and this new helper is utterly
 wrong as we already discussed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n9rHG-0007Mw-Gh
Subject: Re: [V9fs-developer] [PATCH 09/11] vfs,
 fscache: Add an IS_KERNEL_FILE() macro for the S_KERNEL_FILE flag
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <smfrench@gmail.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jan 18, 2022 at 01:54:54PM +0000, David Howells wrote:
> Add an IS_KERNEL_FILE() macro to test the S_KERNEL_FILE inode flag as is
> common practice for the other inode flags[1].

Please fix the flag to have a sensible name first, as the naming of the
flag and this new helper is utterly wrong as we already discussed.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
