Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B404EEF24
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Apr 2022 16:19:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1naI7y-0007Ze-EZ; Fri, 01 Apr 2022 14:19:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1naI7v-0007ZI-Qm
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 14:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yYfe4IqnQCFjezJJ1yDBKTdU4r3OcolI7hkf/x5tgk8=; b=gUMDFKUYP3amGZzy3JrgfnVQM/
 NxbM8eW3xppQGhHcKbycBbV8WsaYCUKgxbQEysdIZ1DpG5XRvjylqcy2Obk4S2VuZ66OYY46d4/EA
 8n9hJXLy8A55AYpPnqDpMBKddQQfjxDVWyjD8ozUNWeshFUmOh3iagn69VrU+nP0Hy8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yYfe4IqnQCFjezJJ1yDBKTdU4r3OcolI7hkf/x5tgk8=; b=m/s1QT7B5+2uWu4jrsFY8nCthb
 7xQUUFGQEI+FOdZ8pg2ZZs98A9qZOMaoCRQsVJGInUlH0VeyOgq9sSCTKAPNseI0x599E818zuXAs
 gAgoIB5iLrL/S5aCFi4UDv6664Efx2vsVJ/M3GVHgdBe9drIvRJAljd/y9Q9yeTRcyas=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1naI7r-0007aA-Ti
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 14:19:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=yYfe4IqnQCFjezJJ1yDBKTdU4r3OcolI7hkf/x5tgk8=; b=Mp7i96VGoyqOYdy5qeSb3ChSiX
 A88sWHETy4JZT1B07buCALf5bDh2sXpAVKAR3rROkv2OOuH+zKonNSxQXjVrISFWEspAekCAcfVMQ
 qfPuiC6uL9RxxjzgNL2ZCdJyJfGuh88/1NPZg4MLqAWxD6Y32inIAGbVe3T2aTcCzHa20EIZ71C1r
 wACHpSB/cWHswObK9b3hkQp8IjcGylAqcrqxkVHXYddcGuiyuND1OA0lD0WZuaPo5U5Mun5Kp6sdG
 BrgJoTPmWeTLHR+7ihyCTYqWw855IvFcbqpM8BOr8E15BfJ6jffweL8SZ7oPhDoW+OaQwLu8JGYkf
 zJ/p3BNGcyChk7zk+gsAQdGAHzbHnsfQxZf8K2VHT09PlYnx2wLPaIpwn4X1SpB3l8g4Z/unLgI8C
 0CfttKLBfccPvY19/xaBiV4xEBNPs8Ay+PCsaYnLRIjcOELGctHDPAg84VVko9sr0EMyEwiVzVk2A
 yGxxI6sDqA5eh/JO/eQIvWriFFwXmOe82fYZDV6Ifd36j4HAf2ihYxmQnYhIuk7cCUqTqsC6VuF63
 idR/gS+7pIsoorea5Pq7J0Gaif1McJGwIzBG1q6lkgnYbclDRAMAiYgfgO8C5ruQMiGYiB9htqF+T
 p1lExoY6g2b7/13gj0waM82BdkAd2zORjbJxA6elE=;
To: asmadeus@codewreck.org
Date: Fri, 01 Apr 2022 16:19:20 +0200
Message-ID: <1866935.Y7JIjT2MHT@silver>
In-Reply-To: <YkTP/Talsy3KQBbf@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3791738.ukkqOL8KQD@silver> <YkTP/Talsy3KQBbf@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mittwoch, 30. März 2022 23:47:41 CEST asmadeus@codewreck.org
    wrote: > Thanks Christian! > > Christian Schoenebeck wrote on Wed, Mar 30,
    2022 at 02:21:16PM +0200: [...] > > > Christian Schoenebeck w [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1naI7r-0007aA-Ti
Subject: Re: [V9fs-developer] 9p fs-cache tests/benchmark (was: 9p fscache
 Duplicate cookie detected)
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 30. M=E4rz 2022 23:47:41 CEST asmadeus@codewreck.org wrote:
> Thanks Christian!
> =

> Christian Schoenebeck wrote on Wed, Mar 30, 2022 at 02:21:16PM +0200:
[...]
> > > Christian Schoenebeck wrote on Sat, Mar 26, 2022 at 01:36:31PM +0100:
> > > hm, fscache code shouldn't be used for cache=3Dmmap, I'm surprised yo=
u can
> > > hit this...
> > =

> > I assume that you mean that 9p driver does not explicitly ask for fs-ca=
che
> > being used for mmap. I see that 9p uses the kernel's generalized mmap
> > implementation:
> > =

> > https://github.com/torvalds/linux/blob/d888c83fcec75194a8a48ccd283953bd=
ba7
> > b2550/fs/9p/vfs_file.c#L481
> > =

> > I haven't dived further into this, but the kernel has to use some kind =
of
> > filesystem cache anyway to provide the mmap functionality, so I guess it
> > makes sense that I got those warning messages from the FS-Cache
> > subsystem?
> It uses the generic mmap which has vfs caching, but definitely not
> fs-cache.
> fs-cache adds more hooks for cachefilesd (writing file contents to disk
> for bigger cache) and things like that cache=3Dloose/mmap shouldn't be
> caring about. cache=3Dloose actually just disables some key parts so I'm
> not surprised it shares bugs with the new code, but cache=3Dmmap is really
> independant and I need to trace where these come from...

From looking at the sources, the call stack for emitting "FS-Cache: Duplica=
te
cookie detected" error messages with 9p "cache=3Dmmap" option seems to be:

1. v9fs_vfs_lookup [fs/9p/vfs_inode.c, 788]:

	inode =3D v9fs_get_new_inode_from_fid(v9ses, fid, dir->i_sb);

2. v9fs_get_new_inode_from_fid [fs/9p/v9fs.h, 228]:

	return v9fs_inode_from_fid_dotl(v9ses, fid, sb, 1);

3. v9fs_inode_from_fid_dotl [fs/9p/vfs_inode_dotl.c, 157]:

	inode =3D v9fs_qid_iget_dotl(sb, &st->qid, fid, st, new);

4. v9fs_qid_iget_dotl [fs/9p/vfs_inode_dotl.c, 133]:

	v9fs_cache_inode_get_cookie(inode);
	^--- Called independent of function argument "new"'s value here
   https://github.com/torvalds/linux/blob/e8b767f5e04097aaedcd6e06e2270f9fe=
5282696/fs/9p/vfs_inode_dotl.c#L133

5. v9fs_cache_inode_get_cookie [fs/9p/cache.c, 68]:

	v9inode->fscache =3D
		fscache_acquire_cookie(v9fs_session_cache(v9ses),
				       0,
				       &path, sizeof(path),
				       &version, sizeof(version),
				       i_size_read(&v9inode->vfs_inode));

6. fscache_acquire_cookie [include/linux/fscache.h, 251]:

	return __fscache_acquire_cookie(volume, advice,
					index_key, index_key_len,
					aux_data, aux_data_len,
					object_size);

7. __fscache_acquire_cookie [fs/fscache/cookie.c, 472]:

	if (!fscache_hash_cookie(cookie)) {
		fscache_see_cookie(cookie, fscache_cookie_discard);
		fscache_free_cookie(cookie);
		return NULL;
	}

8. fscache_hash_cookie [fs/fscache/cookie.c, 430]:

	pr_err("Duplicate cookie detected\n");

> > With QEMU >=3D 5.2 you should see the following QEMU warning with your
> > reproducer:
> > =

> > "
> > qemu-system-x86_64: warning: 9p: Multiple devices detected in same Virt=
FS
> > export, which might lead to file ID collisions and severe misbehaviours=
 on
> > guest! You should either use a separate export for each device shared f=
rom
> > host or use virtfs option 'multidevs=3Dremap'!
> > "
> =

> oh, I wasn't aware of the new option. Good job there!
> =

> It's the easiest way to reproduce but there are also harder to fix
> collisions, file systems only guarantee unicity for (fsid,inode
> number,version) which is usually bigger than 128 bits (although version
> is often 0), but version isn't exposed to userspace easily...
> What we'd want for unicity is handle from e.g. name_to_handle_at but
> that'd add overhead, wouldn't fit in qid path and not all fs are capable
> of providing one... The 9p protocol just doesn't want bigger handles
> than qid path.

No bigger qid.path on 9p protocol level in future? Why?

> And, err, looking at the qemu code
> =

>   qidp->version =3D stbuf->st_mtime ^ (stbuf->st_size << 8);
> =

> so the qid is treated as "data version",
> but on kernel side we've treated it as inode version (i_version, see
> include/linux/iversion.h)
> =

> (v9fs_test_inode_dotl checks the version is the same when comparing two
> inodes) so it will incorrectly identify two identical inodes as
> different.
> That will cause problems...
> Since you'll be faster than me could you try keeping it at 0 there?

I tried with your suggested change on QEMU side:

diff --git a/hw/9pfs/9p.c b/hw/9pfs/9p.c
index a6d6b3f835..5d9be87758 100644
--- a/hw/9pfs/9p.c
+++ b/hw/9pfs/9p.c
@@ -981,7 +981,7 @@ static int stat_to_qid(V9fsPDU *pdu, const struct stat =
*stbuf, V9fsQID *qidp)
         memcpy(&qidp->path, &stbuf->st_ino, size);
     }
 =

-    qidp->version =3D stbuf->st_mtime ^ (stbuf->st_size << 8);
+    qidp->version =3D 0;
     qidp->type =3D 0;
     if (S_ISDIR(stbuf->st_mode)) {
         qidp->type |=3D P9_QID_TYPE_DIR;

Unfortunately it did not make any difference for these 2 Linux kernel fs-ca=
che
issues at least; still same errors, and same suboptimal performance.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
