Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9A9638E75
	for <lists+v9fs-developer@lfdr.de>; Fri, 25 Nov 2022 17:45:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oybpd-0005dZ-Va;
	Fri, 25 Nov 2022 16:45:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1oybpc-0005dM-9X
 for v9fs-developer@lists.sourceforge.net;
 Fri, 25 Nov 2022 16:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x53sQaWDa/88sDZr4eyy32ZPwwt0aIb86EtvxNAGN44=; b=OQQz+FI5+GG/sb1KQzNs3L7n3L
 OJOIhn7sHfCDSK20kvjQLUCdnWKr13MIEXcbxxAi6zI3AAKb5+upeUiQk6BwTHmXfjAtJireJux/v
 rB5vSAcuJ5+7yhgR7dYOBPKZDiwcsqitW1JuELhqRdXUrnadZuBJ3CgEqr2nhXcMWsh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x53sQaWDa/88sDZr4eyy32ZPwwt0aIb86EtvxNAGN44=; b=T6z45BjS4O3q7PhIYXOz2WxL2p
 hR6sv4BIEbQu6xX5I8r/JI7HIdasfbJy+Fi//R084Gt5nmdqDKVuRmIF9nJjce+G813TIRS/OMe8W
 KpXg3e70Pj5lyL6Ht7gJ9MQNAXtUr8F1GUVo3p+0k7UYQOEwcSzrUedET8dAkS2VtKCk=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oybpa-0004CA-Ad for v9fs-developer@lists.sourceforge.net;
 Fri, 25 Nov 2022 16:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=x53sQaWDa/88sDZr4eyy32ZPwwt0aIb86EtvxNAGN44=; b=FgIlSpJUVdmZH0PghTbL44P7IF
 e4NY5MC1spnQ/Hghs2BPEnAn4l+90NGdQnegTxnvF3OJ+U61eJwM1xO7mu1dExG7v6tzYFJlIwp6P
 B2aUL8HMJfhwXPEFKGEUx8W81rpFniQnI/SO1y7EbgaIaJZ1BUdY5gveE/1N4GNXa8B97uvPu85K6
 Yklhfru9ymFK8ftcM08F8KvpHHcaOQRkbEAd2Tsqc4ddBcwjQEZAIlZg7vNI/YdzW+wA2axEbhN4Z
 espCpyFT59uiQWc205hVxBxnTMNyu5Rhgwc6LnCyra/HjzGVoTTOmo0NKot9JbtDIoan182Jla8Wi
 UlV/To0w==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1oyboR-006i8e-1U; Fri, 25 Nov 2022 16:44:27 +0000
Date: Fri, 25 Nov 2022 16:44:27 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <Y4Dw65Nzt4bX9esd@ZenIV>
References: <20221120210004.381842-1-jlayton@kernel.org>
 <Y4A6/ozhUncxbimi@ZenIV>
 <1d474f53670771f324745f597ec94b63a006d687.camel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d474f53670771f324745f597ec94b63a006d687.camel@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Nov 25, 2022 at 08:23:45AM -0500, Jeff Layton wrote:
 > I left it in fs.h for now. Some of the file_operations prototypes need
 > that typedef, and I figure that anyone who is including filelock.h will
 > almost certainly need to include fs.h anyway. We co [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1oybpa-0004CA-Ad
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
 Marc Dionne <marc.dionne@auristor.com>, linux-xfs@vger.kernel.org, hch@lst.de,
 Mike Marshall <hubcap@omnibond.com>, linux-cifs@vger.kernel.org,
 Andreas Gruenbacher <agruenba@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Mark Fasheh <mark@fasheh.com>, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, Christine Caulfield <ccaulfie@redhat.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Namjae Jeon <linkinjeon@kernel.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 Tom Talpey <tom@talpey.com>, linux-fsdevel@vger.kernel.org,
 David Teigland <teigland@redhat.com>, Joel Becker <jlbec@evilplan.org>,
 ceph-devel@vger.kernel.org, Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Paulo Alcantara <pc@cjr.nz>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Steve French <sfrench@samba.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Chuck Lever <chuck.lever@oracle.com>, Anna Schumaker <anna@kernel.org>,
 Bob Peterson <rpeterso@redhat.com>, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Nov 25, 2022 at 08:23:45AM -0500, Jeff Layton wrote:

> I left it in fs.h for now. Some of the file_operations prototypes need
> that typedef, and I figure that anyone who is including filelock.h will
> almost certainly need to include fs.h anyway. We could move it into a
> separate header too, but it's probably not worth it.
> 
> HCH mentioned years ago though that we should just get rid of fl_owner_t
> altogether and just use 'void *'. I didn't do it at the time because I
> was focused on other changes, but this might be a good time to change
> it.

Might be...

> > > +extern void show_fd_locks(struct seq_file *f,
> > > +			 struct file *filp, struct files_struct *files);
> > 
> > If anything, that would be better off as fl_owner_t...  Again, a separate
> > patch.
> 
> I'm not sure what you mean here. This prototype hasn't changed, and is
> only called from procfs.

Take a look at that function and its caller.  The use of 'files' argument there
is (and can be) only as an opaque pointer to be compared to ->fl_owner; at that
point it might be pointing to freed memory, for all we know (and give false
positives if already reused).

TBH, I'd never been able to finish the audit of files_struct pointers passed
into locks subsystem; there definitely are moments when code from fs/locks.c
is dealing with pointers to already freed instances - show_fd_locks() at the
very least.  They are not dereferenced, but beyond that...


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
