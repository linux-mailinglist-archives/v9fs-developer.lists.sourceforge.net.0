Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C16DF5EA7FA
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Sep 2022 16:09:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oconC-0004f7-HO;
	Mon, 26 Sep 2022 14:09:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1ocon8-0004eU-Kr
 for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 14:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZnYuvYofSJiq0sGZIJuIjFb+Z9nkGoZsws6wobvCHiY=; b=MXiz456KjjDWyyfiVRZ1/Xb/ph
 sjGztH2BhNyOKuiYERKVYU2uL0GC7r9pRgn/MdCDKduAtr1jANYfrAQTS+G1Kzzna1c1Q+CaTWIpx
 tdnJHGh5ipuAFYCbtV74oZtLUUWFA57qxjzUNZRDD+3+LBRQXdT2rVjZMWrlAAGrDk40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZnYuvYofSJiq0sGZIJuIjFb+Z9nkGoZsws6wobvCHiY=; b=Y
 dDgQtx0DnxiucdqNweyPe/Bggs7SKq5ouM6WEjWmq2iTmud30p/dwglK1lkiXRAUnepQflQ+AEMLv
 FpwCGaMFvJXmdUP5C5AnC+5T7yozIzkL6UJcmJK1wrCg42bPLM9/7TtZqweyodDkd9PymUPvoc+yH
 JQ1EyZQeM5o5eefE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ocon2-003TIt-3h for v9fs-developer@lists.sourceforge.net;
 Mon, 26 Sep 2022 14:09:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0792860DEE;
 Mon, 26 Sep 2022 14:08:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4087C433D6;
 Mon, 26 Sep 2022 14:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664201324;
 bh=8+7n85YBRjuv60S0Fzj+xdTq+XkoJy1fVhgBiUGRmjg=;
 h=From:To:Cc:Subject:Date:From;
 b=XI6wPi7Gn8i0GVsojSvgr5Zmcc7ip4/B/CKX9rhlEvDacyPzvO5OwNlvrK+b7s7I7
 p/oENolphPEl3M91W3vjl7kEB7vN6GEAhX+4vY3sgBfAr8Ao9hzaSjLamUvcqa6LsR
 rX2J6sfLTgWE1/EIopzfSHwB7jLIvHv4nctiH+Iwr6hr5EVvLY2YiGs9dA1InI9RqP
 akvANwPQZDtPG8/H7zNnxtFJ5AexsWmJI5NvtTUEPpF+icCEeBK3c/bdJnQTVKYAlS
 7QJpFoU+BaR7n5m1iQOm8CjPJcdjvjd1MMTiEwDm8dp85DFVcq//ZA+8BI/cAs0i8d
 Qf8t5WDZ6Qn1w==
From: Christian Brauner <brauner@kernel.org>
To: linux-fsdevel@vger.kernel.org
Date: Mon, 26 Sep 2022 16:07:57 +0200
Message-Id: <20220926140827.142806-1-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=14242; i=brauner@kernel.org;
 h=from:subject; bh=Ie4nF5VibVVJHUw7adeARAKGICZR7SP9XKhLnKopJH0=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSQbbrI17pY5wXTh+NnjKRLdBRdsU15s3H3P+9QD2Sl1TFnL
 rU8Wd5SyMIhxMciKKbI4tJuEyy3nqdhslKkBM4eVCWQIAxenAEzkSigjw84FOyIf5Vz2mnz4ckZbjF
 jIRDHGo8uao7kOlRvmqzK13mNkuOGcq84688df/2S7CJ/KI5n8MR5W98oOV+6Z9mGhFrsINwA=
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: "Christian Brauner (Microsoft)" <brauner@kernel.org>
 Hey everyone, /* v2 */ This fixes various things pointed out during review.
 The individual commits contain more details were appropriate. 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ocon2-003TIt-3h
Subject: [V9fs-developer] [PATCH v2 00/30] acl: add vfs posix acl api
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
Cc: linux-cifs@vger.kernel.org,
 "Christian Brauner \(Microsoft\)" <brauner@kernel.org>,
 linux-security-module@vger.kernel.org, Seth Forshee <sforshee@kernel.org>,
 v9fs-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: "Christian Brauner (Microsoft)" <brauner@kernel.org>

Hey everyone,

/* v2 */
This fixes various things pointed out during review. The individual
commits contain more details were appropriate.

As we discussed and seen multiple times the current state of how posix
acls are handled isn't nice and comes with a lot of problems. For a long
and detailed explanation for just some of the issues [1] provides a good
summary.

The current way of handling posix acls via the generic xattr api is
error prone, hard to maintain, and type unsafe for the vfs until we call
into the filesystem's dedicated get and set inode operations.

It is already the case that posix acls are special-cased to death all
the way through the vfs. There are an uncounted number of hacks that
operate on the uapi posix acl struct instead of the dedicated vfs struct
posix_acl. And the vfs must be involved in order to interpret and fixup
posix acls before storing them to the backing store, caching them,
reporting them to userspace, or for permission checking.

Currently a range of hacks and duct tape exist to make this work. As
with most things this is really no ones fault it's just something that
happened over time. But the code is hard to understand and difficult
to maintain and one is constantly at risk of introducing bugs and
regressions when having to touch it.

Instead of continuing to hack posix acls through the xattr handlers this
series builds a dedicated posix acl api solely around the get and set
inode operations. Going forward, the vfs_get_acl(), vfs_remove_acl(),
and vfs_set_acl() helpers must be used in order to interact with posix
acls. They operate directly on the vfs internal struct posix_acl instead
of abusing the uapi posix acl struct as we currently do. In the end this
removes all of the hackiness, makes the codepaths easier to maintain,
and gets us type safety.

This series passes the LTP and xfstests suites without any regressions.
For xfstests the following combinations were tested:

* xfs
* ext4
* btrfs
* overlayfs
* overlayfs on top of idmapped mounts

For people wanting to run their own xfstests I'd recommend to shorten
their test runs via:

./check -g acl,attr,cap,idmapped,io_uring,perms,subvol,unlink

I would appreciate if the 9p and cifs folks could run any posix acl
related tests as I have no setup to really do this without causing me a
lot of pain.

Very likely there's a lot more simplifications for posix acls that we
can make in the future if the basic api has made it.

A few implementation details:

* The series makes sure to retain exactly the same security and
  integrity module permission checks. See [2] for annotated callchains.
  Especially for the integrity modules this api is a win because right
  now they convert the uapi posix acl struct passed to them via a void
  pointer into the vfs struct posix_acl format to perform permission
  checking on the mode.

  There's a new dedicated security hook for setting posix acls which
  passes the vfs struct posix_acl not a void pointer. Basing checking on
  the posix acl stored in the uapi format is really unreliable. The vfs
  currently hacks around directly in the uapi struct storing values that
  frankly the security and integrity modules can't correctly interpret
  as evidenced by bugs we reported and fixed in this area. It's not
  necessarily even their fault it's just that the format we provide to
  them is sub optimal.

* Some filesystems like 9p and cifs need access to the dentry in order
  to get and set posix acls which is why they either only partially or
  not even at all implement get and set inode operations. For example,
  cifs allows setxattr() and getxattr() operations but doesn't allow
  permission checking based on posix acls because it can't implement a
  get acl inode operation.

  Thus, this patch series updates the set acl inode operation to take a
  dentry instead of an inode argument. However, for the get acl inode
  operation we can't do this as the old get acl method is called in
  e.g., generic_permission() and inode_permission(). These helpers in
  turn are called in various filesystem's permission inode operation. So
  passing a dentry argument to the old get acl inode operation would
  amount to passing a dentry to the permission inode operation which we
  shouldn't and probably can't do.

  So instead of extending the existing inode operation Christoph
  suggested to add a new one. He also requested to ensure that the get
  and set acl inode operation taking a dentry are consistently named. So
  for this version the old get acl operation is renamed to
  ->get_inode_acl() and a new ->get_acl() inode operation taking a
  dentry is added. With this we can give both 9p and cifs get and set
  acl inode operations and in turn remove their complex custom posix
  xattr handlers.

* I've done a full audit of every codepaths using variant of the
  current generic xattr api to get and set posix acls and surprisingly
  it isn't that many places. There's of course always a chance that I
  might have missed some and I'm sure we'll find them soon enough.

  The crucial codepaths to be converted are obviously stacking
  filesystems such as ecryptfs and overlayfs.

  For a list of all callers currently using generic xattr api helpers
  see [2] including comments whether they support posix acls or not.

* The old vfs generic posix acl infrastructure doesn't obey
  the create and replace semantics promised on the setxattr(2) manpage.
  This patch series doesn't address this. It really is something we
  should revisit later though.

The patch series is roughly organized as follows:

// intended to be a non-functional change
1. Change existing set acl inode operation to take a dentry argument.

// intended to be a non-functional change
2. Rename existing get acl method.

// intended to be a non-functional change
3. Implement get and set acl inode operations for filesystems that
   couldn't implement one before because of the missing dentry. That's
   mostly 9p and cifs.

// intended to be a non-functional change
4. Build posix acl api, i.e., add vfs_get_acl(), vfs_remove_acl(), and
   vfs_set_acl() including security and integrity hooks.

// intended to be a non-functional change
5. Implement get and set acl inode operations for stacking filesystems.

// semantical change
6. Switch posix acl handling in stacking filesystems to new posix acl
   api now that all filesystems it can stack upon support it.

// semantical change
7. Switch vfs to new posix acl api

8. Remove all now unused helpers

The series can be pulled from:

https://gitlab.com/brauner/linux/-/commits/fs.acl.rework
https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework

The series contains a few preliminary patches which are scheduled for
the next merge window. It was just easier to base the series on top of
them. But if you pull this branch you'll get them included.

I've been working on this for a while and before going any further it'd
be nice to get some reviews. I think that it should be fine to have get
and set acl inode operations that operate on the dentry at least nothing
stuck out immediately that would prevent this. But obviously having
other people point out issues with that would be helpful.

Thanks to Seth for a lot of good discussion around this and
encouragement and input from Christoph.

[1]: https://lore.kernel.org/all/20220801145520.1532837-1-brauner@kernel.org
[2]: https://gist.github.com/brauner/12c795b93a05dc3b3056b1982549a633

v1: https://lore.kernel.org/linux-cifs/20220922151728.1557914-1-brauner@kernel.org

Thanks!
Christian

Christian Brauner (30):
  orangefs: rework posix acl handling when creating new filesystem
    objects
  fs: pass dentry to set acl method
  fs: rename current get acl method
  fs: add new get acl method
  cifs: implement get acl method
  cifs: implement set acl method
  9p: implement get acl method
  9p: implement set acl method
  acl: add vfs_set_acl()
  security: add set acl hook
  selinux: implement set acl hook
  smack: implement set acl hook
  evm: implement set acl hook
  acl: use set acl hook
  evm: add post set acl hook
  acl: add vfs_get_acl()
  acl: add vfs_remove_acl()
  evm: simplify evm_xattr_acl_change()
  ksmbd: use vfs_remove_acl()
  ecryptfs: implement get acl method
  ecryptfs: implement set acl method
  ovl: implement get acl method
  ovl: implement set acl method
  ovl: use posix acl api
  xattr: use posix acl api
  ecryptfs: use stub posix acl handlers
  ovl: use stub posix acl handlers
  cifs: use stub posix acl handlers
  9p: use stub posix acl handlers
  acl: remove a slew of now unused helpers

 Documentation/filesystems/locking.rst |   4 +-
 Documentation/filesystems/porting.rst |   4 +-
 Documentation/filesystems/vfs.rst     |   3 +-
 fs/9p/acl.c                           | 295 +++++------
 fs/9p/acl.h                           |   8 +-
 fs/9p/vfs_inode_dotl.c                |   4 +
 fs/9p/xattr.c                         |   7 +-
 fs/9p/xattr.h                         |   2 -
 fs/bad_inode.c                        |   4 +-
 fs/btrfs/acl.c                        |   3 +-
 fs/btrfs/ctree.h                      |   2 +-
 fs/btrfs/inode.c                      |   8 +-
 fs/ceph/acl.c                         |   3 +-
 fs/ceph/dir.c                         |   2 +-
 fs/ceph/inode.c                       |   4 +-
 fs/ceph/super.h                       |   2 +-
 fs/cifs/cifsacl.c                     | 141 ++++++
 fs/cifs/cifsfs.c                      |   4 +
 fs/cifs/cifsproto.h                   |  20 +-
 fs/cifs/cifssmb.c                     | 206 +++++---
 fs/cifs/xattr.c                       |  68 +--
 fs/ecryptfs/inode.c                   |  32 ++
 fs/erofs/inode.c                      |   6 +-
 fs/erofs/namei.c                      |   2 +-
 fs/ext2/acl.c                         |   3 +-
 fs/ext2/acl.h                         |   2 +-
 fs/ext2/file.c                        |   2 +-
 fs/ext2/inode.c                       |   2 +-
 fs/ext2/namei.c                       |   4 +-
 fs/ext4/acl.c                         |   3 +-
 fs/ext4/acl.h                         |   2 +-
 fs/ext4/file.c                        |   2 +-
 fs/ext4/inode.c                       |   2 +-
 fs/ext4/namei.c                       |   4 +-
 fs/f2fs/acl.c                         |   4 +-
 fs/f2fs/acl.h                         |   2 +-
 fs/f2fs/file.c                        |   4 +-
 fs/f2fs/namei.c                       |   4 +-
 fs/fuse/acl.c                         |   3 +-
 fs/fuse/dir.c                         |   4 +-
 fs/fuse/fuse_i.h                      |   2 +-
 fs/gfs2/acl.c                         |   3 +-
 fs/gfs2/acl.h                         |   2 +-
 fs/gfs2/inode.c                       |   6 +-
 fs/internal.h                         |   1 +
 fs/jffs2/acl.c                        |   3 +-
 fs/jffs2/acl.h                        |   2 +-
 fs/jffs2/dir.c                        |   2 +-
 fs/jffs2/file.c                       |   2 +-
 fs/jffs2/fs.c                         |   2 +-
 fs/jfs/acl.c                          |   3 +-
 fs/jfs/file.c                         |   4 +-
 fs/jfs/jfs_acl.h                      |   2 +-
 fs/jfs/namei.c                        |   2 +-
 fs/ksmbd/smb2pdu.c                    |   4 +-
 fs/ksmbd/smbacl.c                     |   4 +-
 fs/ksmbd/vfs.c                        |  17 +-
 fs/ksmbd/vfs.h                        |   4 +-
 fs/namei.c                            |   2 +-
 fs/nfs/nfs3_fs.h                      |   2 +-
 fs/nfs/nfs3acl.c                      |   3 +-
 fs/nfs/nfs3proc.c                     |   4 +-
 fs/nfsd/nfs2acl.c                     |   4 +-
 fs/nfsd/nfs3acl.c                     |   4 +-
 fs/nfsd/vfs.c                         |   4 +-
 fs/ntfs3/file.c                       |   4 +-
 fs/ntfs3/namei.c                      |   4 +-
 fs/ntfs3/ntfs_fs.h                    |   4 +-
 fs/ntfs3/xattr.c                      |   9 +-
 fs/ocfs2/acl.c                        |   3 +-
 fs/ocfs2/acl.h                        |   2 +-
 fs/ocfs2/file.c                       |   4 +-
 fs/ocfs2/namei.c                      |   2 +-
 fs/orangefs/acl.c                     |  47 +-
 fs/orangefs/inode.c                   |  47 +-
 fs/orangefs/namei.c                   |   2 +-
 fs/orangefs/orangefs-kernel.h         |   9 +-
 fs/orangefs/orangefs-utils.c          |  12 +-
 fs/overlayfs/copy_up.c                |  38 ++
 fs/overlayfs/dir.c                    |  22 +-
 fs/overlayfs/inode.c                  | 151 +++++-
 fs/overlayfs/overlayfs.h              |  34 +-
 fs/overlayfs/super.c                  | 107 +---
 fs/posix_acl.c                        | 681 +++++++++++++-------------
 fs/reiserfs/acl.h                     |   6 +-
 fs/reiserfs/file.c                    |   2 +-
 fs/reiserfs/inode.c                   |   2 +-
 fs/reiserfs/namei.c                   |   4 +-
 fs/reiserfs/xattr_acl.c               |   9 +-
 fs/xattr.c                            |  78 ++-
 fs/xfs/xfs_acl.c                      |   3 +-
 fs/xfs/xfs_acl.h                      |   2 +-
 fs/xfs/xfs_iops.c                     |  16 +-
 include/linux/evm.h                   |  23 +
 include/linux/fs.h                    |  10 +-
 include/linux/lsm_hook_defs.h         |   2 +
 include/linux/lsm_hooks.h             |   4 +
 include/linux/posix_acl.h             |  39 +-
 include/linux/posix_acl_xattr.h       |  43 +-
 include/linux/security.h              |  11 +
 include/linux/xattr.h                 |   8 +
 io_uring/xattr.c                      |   2 +
 mm/shmem.c                            |   2 +-
 security/integrity/evm/evm_main.c     | 128 +++--
 security/security.c                   |  16 +
 security/selinux/hooks.c              |   8 +
 security/smack/smack_lsm.c            |  24 +
 107 files changed, 1550 insertions(+), 1043 deletions(-)


base-commit: 38e316398e4e6338b80223fb5f74415c0513718f
-- 
2.34.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
