Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 333C066D731
	for <lists+v9fs-developer@lfdr.de>; Tue, 17 Jan 2023 08:47:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pHghD-0007bj-VQ;
	Tue, 17 Jan 2023 07:47:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+f2d96d9b1cff2e22bd40+7086+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1pHgh6-0007bc-9L for v9fs-developer@lists.sourceforge.net;
 Tue, 17 Jan 2023 07:47:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IHNi2aQpDkDbxKRjgKUG7Y3Yld9OP1h4x11WFrd3RAw=; b=Yw7w7iHruOI7BYhHFpEDmS1+tG
 QdmwBsqoWnAB3lIfkxOU6Q/ehfTdfbUjHKMi8M/QjbX4Tzcub2Ftg+UyBShTzoUSaDW5AnNvHGBjG
 1M4VrACw3c4+H5uqVv/t1EArN+kzU2Zf3EbcNO5Z+tvmsFdn18KxGkWL/yOPTgusxE9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IHNi2aQpDkDbxKRjgKUG7Y3Yld9OP1h4x11WFrd3RAw=; b=G1M9DoNcAJSU5bz3GQSSs72JMF
 ID846SAlansjweojf3NMfgzt5SMZbvdTeJRZO9o/GjrZ46LvbYTouIoMxME6VylyC4SnGNzTr74ZE
 lXwYoUhP2yec6azHQhArHPXxvXrSUMbkidsBktxNdWYpqGLJcax8CAtHfLne+UE4Erqo=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pHgh3-0005i2-7V for v9fs-developer@lists.sourceforge.net;
 Tue, 17 Jan 2023 07:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=IHNi2aQpDkDbxKRjgKUG7Y3Yld9OP1h4x11WFrd3RAw=; b=k/V5SGX3Iv307bhFijCNd9+XzJ
 4OZZVg4pTrQ47wdACEoqa6fcwWyyzSJ1lhtSHglIupg7ogd211aVQJ6OI9/yW2sIpe+P6NgR5rA+D
 zNqRtkse1UOtjqHzoW29Rh63WwvJgZVhfLw5XEWctufFrI/TO1HUHHd2RPU21xWLbBKk+NZo/eIce
 IWHvU5eGdauz3vMjLWQeCKmowA6ii/hRCf0kjODMFgCNYp1z8V5c2cBjVZoKGAkmMvu4T0bJM+/Vk
 P7yrjX4O+Fv6IO2OiPYjXeV1I4PNnQIWmi55XsISaHhLJ6PXVU5fsS9KGu4JeP2alt+NdMnC0fCim
 Mp66819w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pHgfw-00DEsx-QJ; Tue, 17 Jan 2023 07:46:32 +0000
Date: Mon, 16 Jan 2023 23:46:32 -0800
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <Y8ZSWM2bxlRmMMTz@infradead.org>
References: <167391047703.2311931.8115712773222260073.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <167391047703.2311931.8115712773222260073.stgit@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  First off the liver comment: can we cut down things for a
 first round? Maybe just convert everything using the bio based helpers and
 then chunk it up? Reviewing 34 patches across a dozen subsystems is [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pHgh3-0005i2-7V
Subject: Re: [V9fs-developer] [PATCH v6 00/34] iov_iter: Improve page
 extraction (ref, pin or just list)
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jan Kara <jack@suse.cz>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Stefan Metzmacher <metze@samba.org>, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, Christoph Hellwig <hch@lst.de>,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-scsi@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-rdma@vger.kernel.org,
 Long Li <longli@microsoft.com>, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Steve French <smfrench@gmail.com>,
 linux-cachefs@redhat.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Namjae Jeon <linkinjeon@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Tom Talpey <tom@talpey.com>,
 Al Viro <viro@zeniv.linux.org.uk>, v9fs-developer@lists.sourceforge.net,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Rohith Surabattula <rohiths.msft@gmail.com>, netdev@vger.kernel.org,
 Paulo Alcantara <pc@cjr.nz>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-crypto@vger.kernel.org, Anna Schumaker <anna@kernel.org>,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

First off the liver comment:  can we cut down things for a first
round?  Maybe just convert everything using the bio based helpers
and then chunk it up?  Reviewing 34 patches across a dozen subsystems
isn't going to be easy and it will be hard to come up with a final
positive conclusion.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
