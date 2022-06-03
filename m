Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BF253CD76
	for <lists+v9fs-developer@lfdr.de>; Fri,  3 Jun 2022 18:46:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nxARZ-0004oI-Dq; Fri, 03 Jun 2022 16:46:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nxARW-0004np-3G
 for v9fs-developer@lists.sourceforge.net; Fri, 03 Jun 2022 16:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kXVYvFbhRtK9acN26j1XWCEogKAYZqk8a4oWz3lSzys=; b=MmIP6yD6GFInnYfKPehPwVbp32
 ITPRQ+lCMe7T/YxHexXo/v88NgZoo2//DekPDSSUgm/zr8d5rVeR522xRlV2cO/3g4xY1YCUL7S58
 tVmOxvVhNBZ6zdkmNYFP5+4yPF2ZI3blApjxXzYXyfdPgaezpoC5hVE3s7Xyi/SpGFSQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kXVYvFbhRtK9acN26j1XWCEogKAYZqk8a4oWz3lSzys=; b=gxF7ZeO2t78aT4cv7dspUz1bbJ
 WkYThdhqA20yhHdGI7GH42JqByjbRMs3n+1Zwoe3T1RJjxQ6JyQ9Q+3UUAJ98NvzSEoudp71qzFFU
 Dj7rbMKysaEpcwLep+xTX6fcrg+GZMzP5V7n7SLLWCu8sanm4sUMGdz7jmBk2NDq+0jo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nxARR-003uld-Qc
 for v9fs-developer@lists.sourceforge.net; Fri, 03 Jun 2022 16:46:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=kXVYvFbhRtK9acN26j1XWCEogKAYZqk8a4oWz3lSzys=; b=uA+L/tvQDE1HlAdvqhK8pkJv0U
 tjM6bE8VYE+Fy+J4EuzuFNN0O3iwMczFHiv2Wa4+AfJd6VT6KVqL0AGbSemY1IS1wKv/Id8Ay7Vhk
 NnhuAi0vpyA8jNGEjDSsKUzzxhvHoIhUN+fSQY0fksl7V0u4SmthopOqFsmY77T9etfs13eqo7n1Y
 lxD3mbrQq310AF9r198uAtRlqlLWsphOmuYYpiwMJ2oSovvCoO7hWEDLFwr+powU2UAA+buR552cb
 TneS/wLj8S2xPDDAKCU4z1jL8VWf2UJahAgJ40MDqIbKztlFUKLyOHnJqEHGXoP32CPvCfPgjK6P6
 RYsiUV5a3CO2AtWkUT5/jHEdlfbofCSg9p0F/6tJhaxczreJzDxDGu04XOjqSEz4upfmJqs1RnUlJ
 M9HnejjWdNXR9BNMmx3CqKEguJOpPJlckGIFUXPyLGhS7sXkG7l5evbcdUJpuFYc9MeIfdNUD3Llu
 0PP5w/8SUWN9i3/mG3gdwLluTATxdpzA4QT7/xlEEhk/3lH4Jad9DquhC+Q8ekHcQ9O7qiLxFEXNs
 U/dnp7Ve5vD6pu1xjpWiqBSJ7NHFZLmosqYpfGmIyRvuvfJOXY+MZL42kMa8z7q9dn1No3Qr9F5P+
 hyEjs0ZSdiFHjS64o6Q2Q1tstJTeI9UKwheOp7twE=;
To: asmadeus@codewreck.org
Date: Fri, 03 Jun 2022 18:46:04 +0200
Message-ID: <3645230.Tf70N6zClz@silver>
In-Reply-To: <7091002.4ErQJAuLzZ@silver>
References: <YmKp68xvZEjBFell@codewreck.org> <YnL0vzcdJjgyq8rQ@codewreck.org>
 <7091002.4ErQJAuLzZ@silver>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Freitag, 6. Mai 2022 21:14:52 CEST Christian Schoenebeck
 wrote: > On Mittwoch, 4. Mai 2022 23:48:47 CEST asmadeus@codewreck.org wrote:
 > > Christian Schoenebeck wrote on Wed, May 04, 2022 at 08:33: [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nxARR-003uld-Qc
Subject: Re: [V9fs-developer] 9p EBADF with cache enabled (Was: 9p fs-cache
 tests/benchmark (was: 9p fscache Duplicate cookie detected))
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Freitag, 6. Mai 2022 21:14:52 CEST Christian Schoenebeck wrote:
> On Mittwoch, 4. Mai 2022 23:48:47 CEST asmadeus@codewreck.org wrote:
> > Christian Schoenebeck wrote on Wed, May 04, 2022 at 08:33:36PM +0200:
> > > On Dienstag, 3. Mai 2022 12:21:23 CEST asmadeus@codewreck.org wrote:
> > > >  - add some complex code to track the exact byte range that got
> > > >  updated
> > > > 
> > > > in some conditions e.g. WRONLY or read fails?
> > > > That'd still be useful depending on how the backend tracks file mode,
> > > > qemu as user with security_model=mapped-file keeps files 600 but with
> > > > passthrough or none qemu wouldn't be able to read the file regardless
> > > > of
> > > > what we do on client...
> > > > Christian, if you still have an old kernel around did that use to
> > > > work?
> > > 
> > > Sorry, what was the question, i.e. what should I test / look for
> > > precisely? :)
> > 
> > I was curious if older kernel does not issue read at all, or issues read
> > on writeback fid correctly opened as root/RDRW
> > 
> > You can try either the append.c I pasted a few mails back or the dd
> > commands, as regular user.
> > 
> > $ dd if=/dev/zero of=test bs=1M count=1
> > $ chmod 400 test
> > # drop cache or remount
> > $ dd if=/dev/urandom of=test bs=102 seek=2 count=1 conv=notrunc
> > dd: error writing 'test': Bad file descriptor
> 
> Seems you were right, the old kernel opens the file with O_RDWR.
> 
> The following was taken with cache=loose, pre-netfs kernel version, using
> your append code and file to be appended already containing 34 bytes,
> relevant file is fid 7:
> 
>   v9fs_open tag 0 id 12 fid 7 mode 2
>   v9fs_open_return tag 0 id 12 qid={type 0 version 1651854932 path 3108899}
> iounit 4096 v9fs_xattrwalk tag 0 id 30 fid 5 newfid 8 name
> security.capability v9fs_rerror tag 0 id 30 err 95
>   v9fs_read tag 0 id 116 fid 7 off 0 max_count 4096
>   v9fs_read_return tag 0 id 116 count 34 err 45
>   v9fs_read tag 0 id 116 fid 7 off 34 max_count 4062
>   v9fs_read_return tag 0 id 116 count 0 err 11
>   v9fs_clunk tag 0 id 120 fid 6
>   v9fs_clunk tag 0 id 120 fid 4
>   [delay]
>   v9fs_write tag 0 id 118 fid 7 off 0 count 39 cnt 1
>   v9fs_write_return tag 0 id 118 total 39 err 11
>   v9fs_fsync tag 0 id 50 fid 7 datasync 0
> 
> BTW to see this protocol debug output with QEMU:
> 
>   cd qemu/build
>   ../configure --enable-trace-backends=log ...
>   make -jN
>   ./qemu-system-x86_64 -trace 'v9fs*' ...

I had another time slice on this issue today. As Dominique pointed out before,
the writeback_fid was and still is opened with O_RDWR [fs/9p/fid.c]:

struct p9_fid *v9fs_writeback_fid(struct dentry *dentry)
{
	int err;
	struct p9_fid *fid, *ofid;

	ofid = v9fs_fid_lookup_with_uid(dentry, GLOBAL_ROOT_UID, 0);
	fid = clone_fid(ofid);
	if (IS_ERR(fid))
		goto error_out;
	p9_client_clunk(ofid);
	/*
	 * writeback fid will only be used to write back the
	 * dirty pages. We always request for the open fid in read-write
	 * mode so that a partial page write which result in page
	 * read can work.
	 */
	err = p9_client_open(fid, O_RDWR);
	if (err < 0) {
		p9_client_clunk(fid);
		fid = ERR_PTR(err);
		goto error_out;
	}
error_out:
	return fid;
}

The problem rather seems to be that the new netfs code does not use the
writeback_fid when doing an implied read before the actual partial writeback.

As I showed in my previous email, the old pre-netfs kernel versions also did a
read before partial writebacks, but apparently used the special writeback_fid
for that.

I added some trap code to recent netfs kernel version:

diff --git a/net/9p/client.c b/net/9p/client.c
index 8bba0d9cf975..11ff1ee2130e 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1549,12 +1549,21 @@ int p9_client_unlinkat(struct p9_fid *dfid, const char *name, int flags)
 }
 EXPORT_SYMBOL(p9_client_unlinkat);
 
+void p9_bug(void) {
+    BUG_ON(true);
+}
+EXPORT_SYMBOL(p9_bug);
+
 int
 p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err)
 {
        int total = 0;
        *err = 0;
 
+    if ((fid->mode & O_ACCMODE) == O_WRONLY) {
+        p9_bug();
+    }
+
        while (iov_iter_count(to)) {
                int count;
 
@@ -1648,6 +1657,10 @@ p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
        p9_debug(P9_DEBUG_9P, ">>> TWRITE fid %d offset %llu count %zd\n",
                 fid->fid, offset, iov_iter_count(from));
 
+    if ((fid->mode & O_ACCMODE) == O_RDONLY) {
+        p9_bug();
+    }
+
        while (iov_iter_count(from)) {
                int count = iov_iter_count(from);
                int rsize = fid->iounit;

Which triggers the trap in p9_client_read() with cache=loose. Here is the
backtrace [based on d615b5416f8a1afeb82d13b238f8152c572d59c0]:

[  139.365314] p9_client_read (net/9p/client.c:1553 net/9p/client.c:1564) 9pnet
[  139.148806] v9fs_issue_read (fs/9p/vfs_addr.c:45) 9p
[  139.149268] netfs_begin_read (fs/netfs/io.c:91 fs/netfs/io.c:579 fs/netfs/io.c:625) netfs
[  139.149725] ? xas_load (lib/xarray.c:211 lib/xarray.c:242) 
[  139.150057] ? xa_load (lib/xarray.c:1469) 
[  139.150398] netfs_write_begin (fs/netfs/buffered_read.c:407) netfs
[  139.150883] v9fs_write_begin (fs/9p/vfs_addr.c:279 (discriminator 2)) 9p
[  139.151293] generic_perform_write (mm/filemap.c:3789) 
[  139.151721] ? generic_update_time (fs/inode.c:1858) 
[  139.152112] ? file_update_time (fs/inode.c:2089) 
[  139.152504] __generic_file_write_iter (mm/filemap.c:3916) 
[  139.152943] generic_file_write_iter (./include/linux/fs.h:753 mm/filemap.c:3948) 
[  139.153348] new_sync_write (fs/read_write.c:505 (discriminator 1)) 
[  139.153754] vfs_write (fs/read_write.c:591) 
[  139.154090] ksys_write (fs/read_write.c:644) 
[  139.154417] do_syscall_64 (arch/x86/entry/common.c:50 arch/x86/entry/common.c:80) 
[  139.154776] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:115)

I still had not time to read the netfs code part yet, but I assume netfs falls
back to a generic 9p read on the O_WRONLY opened fid here, instead of using
the special O_RDWR opened 'writeback_fid'.

Is there already some info available in the netfs API that the read is
actually part of a writeback task, so that we could force on 9p driver level
to use the special writeback_fid for the read in this case instead?

Best regards,
Christian Schoenebeck






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
