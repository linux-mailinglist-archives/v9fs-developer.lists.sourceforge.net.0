Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1BE63342E
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 04:46:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxKEe-0005P9-9y;
	Tue, 22 Nov 2022 03:46:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1oxKER-0005Oc-Pm
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 03:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uiFDQ6s5XgAcT9HYz21ROzPo6ZCyN/YsiViP9JuL2Vc=; b=lHoYn7Ar+liJHW1acRHobRC76k
 eV/h8GauiWmHaY4QZNx61ApeBoHIlW93mjsstfqPdE5mm3bB3g+8a144oGO6sH5Ph1ZIELSHRETuf
 vd3pM40Ukr0jHHJIyQ5J221C5Jj+/kQW4vgAuniqT2TeANYgYCfShZkqVyOfpVaEWAsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uiFDQ6s5XgAcT9HYz21ROzPo6ZCyN/YsiViP9JuL2Vc=; b=BiLsql0Eie+0qAFhMwX+zgcg0W
 p7T6yA8qDmV4H1qnoyPXhcK0kDHWyclnE7Geyx42zQhHLNnZUlUKQJYM96hgEoyAhjgY2+YMhWAwJ
 qem29ta5MBnA0ZngX9DVAM4DXafGBjCTnmo6hVfuuY1FbPU8+2hcYame17Uw3ZQmpT7Y=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxKEP-00AMdo-SC for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 03:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=uiFDQ6s5XgAcT9HYz21ROzPo6ZCyN/YsiViP9JuL2Vc=; b=NJJwrm6IpzOJ+nUmhrd1OXfoCk
 G7FtSuALDx10w2NwiIqoKiG9ykgmyUGgqgtM+aJpa2oS2fQRQ+RCGSFLUVL1nV3H67iQsoM+ZXI+P
 75G75qOGTBUz2j3XL00qgcUTJotjzi0OfiKIf+ALXzMf3ZoQMf3KRnGWl+fsNnIUD5GBw7fYM0qpK
 68xmJhc99PpF71YEvdwSpdkfVDQQinCYdj6BfJplncqBsPQyicO+REFgABedNNQo6QpK9GD/KJOMG
 I2YH4RdEbuSk9AKSGChXb1wwhkouk4nfTA4WUiJD8aJEXUyng2vGvKiEnZPT7EPwwj7AX43JZiVeT
 eCgYCCfg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1oxKCp-005u2i-VP; Tue, 22 Nov 2022 03:44:20 +0000
Date: Tue, 22 Nov 2022 03:44:19 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Xiubo Li <xiubli@redhat.com>
Message-ID: <Y3xFkyZykWp5/Rvq@casper.infradead.org>
References: <20221120210004.381842-1-jlayton@kernel.org>
 <6627384e-5514-048f-308e-57414d0c5b31@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6627384e-5514-048f-308e-57414d0c5b31@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 21, 2022 at 09:26:16AM +0800, Xiubo Li wrote:
 [1300+ lines snipped] > LGTM. > > Reviewed-by: Xiubo Li <xiubli@redhat.com>
 You really don't need to quote the whole thing. Please be more considerate.
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oxKEP-00AMdo-SC
Subject: Re: [V9fs-developer] [PATCH] filelock: move file locking
 definitions to separate header file
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Martin Brandenburg <martin@omnibond.com>,
 "Darrick J. Wong" <djwong@kernel.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Howells <dhowells@redhat.com>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Marc Dionne <marc.dionne@auristor.com>, samba-technical@lists.samba.org,
 linux-xfs@vger.kernel.org, hch@lst.de, Mike Marshall <hubcap@omnibond.com>,
 linux-cifs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Mark Fasheh <mark@fasheh.com>,
 linux-afs@lists.infradead.org, cluster-devel@redhat.com,
 Christine Caulfield <ccaulfie@redhat.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Namjae Jeon <linkinjeon@kernel.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 Tom Talpey <tom@talpey.com>, linux-fsdevel@vger.kernel.org,
 David Teigland <teigland@redhat.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs@vger.kernel.org, Paulo Alcantara <pc@cjr.nz>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Ronnie Sahlberg <lsahlber@redhat.com>, Steve French <sfrench@samba.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Chuck Lever <chuck.lever@oracle.com>, Anna Schumaker <anna@kernel.org>,
 Bob Peterson <rpeterso@redhat.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Nov 21, 2022 at 09:26:16AM +0800, Xiubo Li wrote:
[1300+ lines snipped]
> LGTM.
> 
> Reviewed-by: Xiubo Li <xiubli@redhat.com>

You really don't need to quote the whole thing.  Please be more
considerate.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
