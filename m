Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC91665ACF
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Jan 2023 12:51:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pFZdZ-0006Te-Az;
	Wed, 11 Jan 2023 11:51:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux+v9fs-developer=lists.sourceforge.net@armlinux.org.uk>)
 id 1pFZdX-0006Ld-9R for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Jan 2023 11:51:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/B/lUwSLDdy4TKNacqRrqVdQIO2bhHf2Dz5b7u6s8PE=; b=LcbuF87EQFMuOeJF8jbfVVn8Ic
 ZrWuJb0B0AMeNbgV22Zy66jgq+D6KyrnKI0X1LM5N13M46Ew/7gOM+0igL9wWqgT1+4T7/tf7IheL
 WZ4KaHpxCT8hQoCw/SmZFcE+b+xWWAjunDSTiGqiwxFEUhqZzXeh0fd/5PR3vPQbdkCI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/B/lUwSLDdy4TKNacqRrqVdQIO2bhHf2Dz5b7u6s8PE=; b=nWC3NRulJ3PQvVaSRFcDEkRbDS
 asP3pcci4Ptt9S+PGZI4rwdBQ7ebxdXColCGpF94D/z7v8sJwaBy9jn+gE6GNw9+aU+7lM1UwcT+q
 cfViH4fxYPOFxJUlSJl3zZwJCPXzt3LaLmv/PrLE29PRPYahAs+sk0LJWC1+dwyKKocA=;
Received: from pandora.armlinux.org.uk ([78.32.30.218])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pFZdU-00Dq3Z-Vy for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Jan 2023 11:51:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/B/lUwSLDdy4TKNacqRrqVdQIO2bhHf2Dz5b7u6s8PE=; b=bcql4AlYVAJfMUZcdgk78k/Yny
 q4YxTySo08vOzZJbXrcUsvwxHEdzxgb+Ii1pvB23J18DFaDaSxWwBDTwyZecKpMjpzQSj9cSdzwmB
 E7FeOscjYnn+NHlMhzBHTcQyUCHILWDwxB3r/wjmCpMi1dOhxzWkdzfdVZaVaLtHEn2WfhcBSiMoJ
 xaR4xsr0iH8jHbII4QbOQBd/z6Ffk95rwXeSJqAugvrLrUzd2S6So2J6l2wpGNMPAo+GmrZbGZYy2
 3br39DqBSOcN8JgFwxhPiVl/2Ubg9nDcfM/BSKfMobkmQa8ifVIF5567jY8IZeuTcc+4AkuGErYD7
 D1ThFcXw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:36052)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1pFZIf-00054b-0L; Wed, 11 Jan 2023 11:29:44 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1pFZIV-0001D1-VB; Wed, 11 Jan 2023 11:29:35 +0000
Date: Wed, 11 Jan 2023 11:29:35 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <Y76dnx07NGAS2jqG@shell.armlinux.org.uk>
References: <20230105211937.1572384-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230105211937.1572384-1-jlayton@kernel.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 05, 2023 at 04:19:29PM -0500, Jeff Layton wrote:
 > The file locking definitions have lived in fs.h since the dawn of time,
 > but they are only used by a small subset of the source files th [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: armlinux.org.uk]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [78.32.30.218 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [78.32.30.218 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pFZdU-00Dq3Z-Vy
Subject: Re: [V9fs-developer] [PATCH v2] filelock: move file locking
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
 Marc Dionne <marc.dionne@auristor.com>, linux-xfs@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Mike Marshall <hubcap@omnibond.com>,
 linux-cifs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Mark Fasheh <mark@fasheh.com>,
 linux-afs@lists.infradead.org, cluster-devel@redhat.com,
 Christine Caulfield <ccaulfie@redhat.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Namjae Jeon <linkinjeon@kernel.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-nfs@vger.kernel.org, Tom Talpey <tom@talpey.com>,
 linux-fsdevel@vger.kernel.org, David Teigland <teigland@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, Christian Brauner <brauner@kernel.org>,
 Paulo Alcantara <pc@cjr.nz>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Steve French <sfrench@samba.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Chuck Lever <chuck.lever@oracle.com>, ocfs2-devel@oss.oracle.com,
 Anna Schumaker <anna@kernel.org>, Bob Peterson <rpeterso@redhat.com>,
 Steve French <stfrench@microsoft.com>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jan 05, 2023 at 04:19:29PM -0500, Jeff Layton wrote:
> The file locking definitions have lived in fs.h since the dawn of time,
> but they are only used by a small subset of the source files that
> include it.
> 
> Move the file locking definitions to a new header file, and add the
> appropriate #include directives to the source files that need them. By
> doing this we trim down fs.h a bit and limit the amount of rebuilding
> that has to be done when we make changes to the file locking APIs.
> 
> Reviewed-by: Xiubo Li <xiubli@redhat.com>
> Reviewed-by: Christian Brauner (Microsoft) <brauner@kernel.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: David Howells <dhowells@redhat.com>
> Acked-by: Chuck Lever <chuck.lever@oracle.com>
> Acked-by: Joseph Qi <joseph.qi@linux.alibaba.com>
> Acked-by: Steve French <stfrench@microsoft.com>
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>  arch/arm/kernel/sys_oabi-compat.c |   1 +

For arm:

Reviewed-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
