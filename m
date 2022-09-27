Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 023EB5EB67A
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Sep 2022 02:53:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ocyqu-0003kE-Vh;
	Tue, 27 Sep 2022 00:53:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <casey@schaufler-ca.com>) id 1ocyqt-0003k8-KQ
 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 00:53:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yRfh20cK0zTSrueP4A9s+5rPzJTG/CBDLK7RqZi6844=; b=LrlodST2bQHRbFaUVJGjR060Fi
 9FAbWtQf9Jn0/+QK4ONFPny8C/cSdOZ2SyvF3b2PT8UBdNmrCpjt/sqc+ezeMhy+OlJ97t49NzZQQ
 39AFCNRqb4gx35GWJe6tKJK3Gw2+L+6e4MXARw32tJrabOi3gay0naHQj6iHrb384vHA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yRfh20cK0zTSrueP4A9s+5rPzJTG/CBDLK7RqZi6844=; b=Y2GLCCWX1tqFbXiF9eHrB33Tvq
 SxhTGJjIV810/dSeQVTw8FT3gTVJBSl2fzKT4Py3Wo7ZRIBgc9S4jPSPsf52J3LQakVp0Hfyc0EYb
 F/4Sd3IjDkayKYSRQSAOUhGLJa/u+wV1Z6NaPdoPiffskCJvJUO2CbHIqdZeJFxAYAh8=;
Received: from sonic309-28.consmr.mail.ne1.yahoo.com ([66.163.184.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ocyql-0001Gv-Qw for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 00:53:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1664240001; bh=yRfh20cK0zTSrueP4A9s+5rPzJTG/CBDLK7RqZi6844=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To;
 b=A3YO4hv9xsvv5Z6aZf0Y6i+cN4sbfClEjKwUXttAegsMDNfCvZUGhplV1Lnmw/KreLjyU5JOWk8WmafEbtiHdyyZJ2D7yozblc9bAs9awUXhXVsQ2yWH3sDfMPLSQbMYMNUVx1+f20MOhC3x3FsBc1ipqrS32EgKaByWie9+RKVhelnVOpD6gWpBAcKsd/Ay/6cE9gVBYcrKH4wOPR0X8B/cBk7OBRiLtVVvX2F9Nvk67trmpG8RyzovZbXUPYB4WwiXkdNhMYFi2eLp5Vrp8YxXu5UXkDrsiql/1oNbLdyQEqyv6sDB/R60sjLXWdHPcB+bjEe0xy2lDXCvdla30w==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1664240001; bh=CKGZg9Cv52ieOZmXioqp3IjlJ519emIbapLIMS673Ot=;
 h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
 b=sWB8pV1ifLx6JlwEfZgt8TPAOuqob4itzwqUj19QFnJV6L6Wykid65exAQwDbTwLXByg4gcprNyfEb15q4lGPF2goSv3+phCNX3u+r9z25P0eMGCXIS14n/k/6ktsIHxwitTwdkGc1RF5zHGBkPHZCzDkz65YGm649f+GN7bz83mkKMb+kEPpcckWtIf8pH2LDp+PW+Im7CLGnDT7q3P0CBuDarBSDUkfYEpzWEXzyznvh/+SZBBRNBB+EReptaybsiPNOxvnNBqwrlxAg+722A4tlYFiRnIU7TzofYorLnJH/WhrbgscKTphPgMseCFdq/0LVSR79pGGlxv6ZFSdw==
X-YMail-OSG: 99peMzAVM1nlNUvW9a_XA4Rd5tXUOq2k1vtklJU5im.Z6yq4MeLdXzwTUpAseEk
 9agbdoXHyZxQk1_j17l5MmgaiO4XSuXr34QKDuOMJ7Q_wmvLZzjvnEJj_Ok_4fJIs7c7rH6qJqjs
 WyLs4lK4mFNpsS97n6ANAJeyHHiRaTAUZ2KiFIPz.5S6yriHDBJT0_6mfYPcXps_.VUibL6hfSWO
 dWeBFgMY3WaO5AcafPdJGtCzZ9sa_spd3AVa3iB.w8OhPPiPeDkPBqaNzt40lP9mgp2Q1kZfnEFq
 oeC0l99a7mAYzYPPE.5NMghXeUPkm2dxYf4Sw.DDBZJQlHZ1.AZQwRmsvVA.pB2sGg6Frl3GZsGp
 zs5p5525C.67XNONCsFvN0buusR8lVD7_n8xtiGZihf3DSV6y0_BuC7P7WtSQToSYoC85nywdfGP
 OMDeodtD0bRydY8jqSgBvaHAB0dqaeFNH_oEyukIcrgyGIufbYf5kWdalu7n6_SL602f_X4auUH0
 gU58OAJMc2BJC1J8NSxKODsntRsOtHr3pWSISRzfGxDdP1yYX8V2F0j7msAuPCVP8QMy8lun7QC6
 3MqegRNChEnLo52On7UI1b8QYireSA55mZw_OQTHllciIwbt_vQ91Q7FAYBYWY6aThekYPapvBQy
 e7l3Iz8JIgnJ.0UV1EjyZSo3BkEdQbXmvyam7xK49.YhNL_nS1aEAw7ARWM2MlA_NkOKRdbun8Rg
 oruU4reYm23uNi_qa8OEjuavb..D0GT9OeyjYllvBJSeFDfeiBgmgS7QbMnQ45hYeAqLwNBQfVUg
 WXxVHPccOAYYrIe_ndzigQVJgNde_u5HzuLPZdfNa.q9dE2BiDHi3LN9Y83i.pT5Nq4luQivo5y4
 CXYrjn.tH2shz9rjTFrrNnb4gmkQYljXk.7P2ibHTRSjb_AS0YaPY64T_CjBtGeI364EfatYlrtp
 poZvnT9lf.z0a_hkKOGpNfibEtm6M6HlkdZFuU814d1qb9DRct8o9Z5KtIB.W3c0bZGag52diQOT
 uzaP0vNsIPhG1cXHj45mSm9VxrAqPcY5pRodzoO_wy5UiStiXI1Wil7QXHAFN_TWB5IKBgSs6ESw
 4_OhFCafYmlFFwSq77V1t9w7v2jhcJdQjgeM7bgSx5QGekzaliAxAlqlcWrdXeEdF0_yQbOa5MdD
 IpsK.oGofsmf139sa5Lezy_nrYX_xuByeTYsdTdp0i84ydxguwfaV5VGKUnpktVKmp7n5vOMS_Qa
 nanO4a_73xbpN_iwcAqs_2QWN1wKhiTjgoSOnGGoazXavRJBm_lAmKC8UXfU3ociIJo6_r8vXTDM
 22dkitWIZYrxEo9948YQ0KwTIOO9QS6Ds_2bLitL2zcJ4n2G57EYKro2jJIYMZwwVIWkbLEhC_aT
 v0CCdEcO2MTO8pfgs9gQwIW3BaiMukezVodTuhKeDNoBTecSkeob5FmyyrPPfVu9pcFvMeI4OdWn
 cGJ54Am5lQJiYpddIa5W5UPeW7moDHfUIpH0HymMD3M8ssSC5PxCBAu_.9Q_BWmwJ1Ax2AVPS8In
 y89Q1mUxYSyAzYhPWDDaB5_iNDXk0xxKLBPXVI3H2otQ2Z9jWURXuLIK3F4Vns5PCJBStWc1jLBj
 xBO.qxNkb52gITDRND2lGd6.CEgWfD98Q1cv0iMkMa2Q92NO6jrd_eT0VLU9rTnYMcMJXqLxSZ04
 hwOFLwV7rZOE9KiZHlj7OLrlBQFlhCgO36cJVUnl5YjKCB3w5aRMgarnpcP9ngnvADQ_ydYceHRL
 4S1BJ_NeGL4c0LjFDJ4.ue2ltVNyShM7ZKVqkICBjvxO1mOaQ5EotbYZt03VpNQsSJesXPsUOn.V
 V0nm4NkQtzjcXpHXBmN9ObPiawQJIOURAqfZ6YkWFkmxUcHaofm5eYrWMtTYWxx8rHlQ342AZIHr
 sET8kOcFixQYh8xW22uDl.qOoytOirAhQfi5fnyZlTmUNqP2Iqb2aNFkOANk5y3DSHbjB9Ae3rIk
 Jl1TQR4S2IxlmmiQvohEurj4cckOneu7OEmiZg2wyTrTVDK4ZC4H2TD6DBfYJt2xP1JWJhWGqcEt
 kjORLnpt40XT4pTUtTsOXsnQZmz_IewWC0uB01_HNq1QGRkShCaggJjopdKUex9r8aEnDvMeKZTG
 DNjTPk7MY0wglFaSjjh_kYPcGli6WNjFnbgtTpPc200EnJlhYPwAEf8oQX_N4AvrvwR_XEd6TwPP
 koWIxUvHav_P37pDxufDPVU1RiUT_g7wwu1WJ1jR5rDexR9TRvAOXmgk_
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Tue, 27 Sep 2022 00:53:21 +0000
Received: by hermes--production-bf1-759bcdd488-6vlh5 (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID afaad069c597ade3f7f2c71a237cba05; 
 Tue, 27 Sep 2022 00:22:48 +0000 (UTC)
Message-ID: <99173046-ab2e-14de-7252-50cac1f05d27@schaufler-ca.com>
Date: Mon, 26 Sep 2022 17:22:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Christian Brauner <brauner@kernel.org>, linux-fsdevel@vger.kernel.org
References: <20220926140827.142806-1-brauner@kernel.org>
From: Casey Schaufler <casey@schaufler-ca.com>
In-Reply-To: <20220926140827.142806-1-brauner@kernel.org>
X-Mailer: WebService/1.1.20702
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/26/2022 7:07 AM,
 Christian Brauner wrote: > From: "Christian
 Brauner (Microsoft)" <brauner@kernel.org> > > Hey everyone, > > /* v2 */
 > This fixes various things pointed out during review. The in [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.184.154 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ocyql-0001Gv-Qw
Subject: Re: [V9fs-developer] [PATCH v2 00/30] acl: add vfs posix acl api
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
Cc: linux-cifs@vger.kernel.org, linux-security-module@vger.kernel.org,
 Seth Forshee <sforshee@kernel.org>, casey@schaufler-ca.com,
 v9fs-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 9/26/2022 7:07 AM, Christian Brauner wrote:
> From: "Christian Brauner (Microsoft)" <brauner@kernel.org>
>
> Hey everyone,
>
> /* v2 */
> This fixes various things pointed out during review. The individual
> commits contain more details were appropriate.
>
> As we discussed and seen multiple times the current state of how posix
> acls are handled isn't nice and comes with a lot of problems. For a long
> and detailed explanation for just some of the issues [1] provides a good
> summary.
>
> The current way of handling posix acls via the generic xattr api is
> error prone, hard to maintain, and type unsafe for the vfs until we call
> into the filesystem's dedicated get and set inode operations.
>
> It is already the case that posix acls are special-cased to death all
> the way through the vfs. There are an uncounted number of hacks that
> operate on the uapi posix acl struct instead of the dedicated vfs struct
> posix_acl. And the vfs must be involved in order to interpret and fixup
> posix acls before storing them to the backing store, caching them,
> reporting them to userspace, or for permission checking.
>
> Currently a range of hacks and duct tape exist to make this work. As
> with most things this is really no ones fault it's just something that
> happened over time. But the code is hard to understand and difficult
> to maintain and one is constantly at risk of introducing bugs and
> regressions when having to touch it.
>
> Instead of continuing to hack posix acls through the xattr handlers this
> series builds a dedicated posix acl api solely around the get and set
> inode operations. Going forward, the vfs_get_acl(), vfs_remove_acl(),
> and vfs_set_acl() helpers must be used in order to interact with posix
> acls. They operate directly on the vfs internal struct posix_acl instead
> of abusing the uapi posix acl struct as we currently do. In the end this
> removes all of the hackiness, makes the codepaths easier to maintain,
> and gets us type safety.

I may have missed something obvious, but from the LSM side the only place
where the ACL handling differs from general xattr handling in in EVM. This
seems like a lot of "clean-up" to address that one special case. Especially
since EVM isn't (currently) an LSM. I'll admit that a future LSM might look
into the posix acl, although looking at another security feature's data is
hardly encouraged. EVM, which is all about protecting the content of other
security data is kind of exceptional in that.

I suggest that you might focus on the acl/evm interface rather than the entire
LSM interface. Unless there's a serious plan to make ima/evm into a proper LSM
I don't see how the breadth of this patch set is appropriate.

>
> This series passes the LTP and xfstests suites without any regressions.
> For xfstests the following combinations were tested:
>
> * xfs
> * ext4
> * btrfs
> * overlayfs
> * overlayfs on top of idmapped mounts
>
> For people wanting to run their own xfstests I'd recommend to shorten
> their test runs via:
>
> ./check -g acl,attr,cap,idmapped,io_uring,perms,subvol,unlink
>
> I would appreciate if the 9p and cifs folks could run any posix acl
> related tests as I have no setup to really do this without causing me a
> lot of pain.
>
> Very likely there's a lot more simplifications for posix acls that we
> can make in the future if the basic api has made it.
>
> A few implementation details:
>
> * The series makes sure to retain exactly the same security and
>   integrity module permission checks. See [2] for annotated callchains.
>   Especially for the integrity modules this api is a win because right
>   now they convert the uapi posix acl struct passed to them via a void
>   pointer into the vfs struct posix_acl format to perform permission
>   checking on the mode.
>
>   There's a new dedicated security hook for setting posix acls which
>   passes the vfs struct posix_acl not a void pointer. Basing checking on
>   the posix acl stored in the uapi format is really unreliable. The vfs
>   currently hacks around directly in the uapi struct storing values that
>   frankly the security and integrity modules can't correctly interpret
>   as evidenced by bugs we reported and fixed in this area. It's not
>   necessarily even their fault it's just that the format we provide to
>   them is sub optimal.
>
> * Some filesystems like 9p and cifs need access to the dentry in order
>   to get and set posix acls which is why they either only partially or
>   not even at all implement get and set inode operations. For example,
>   cifs allows setxattr() and getxattr() operations but doesn't allow
>   permission checking based on posix acls because it can't implement a
>   get acl inode operation.
>
>   Thus, this patch series updates the set acl inode operation to take a
>   dentry instead of an inode argument. However, for the get acl inode
>   operation we can't do this as the old get acl method is called in
>   e.g., generic_permission() and inode_permission(). These helpers in
>   turn are called in various filesystem's permission inode operation. So
>   passing a dentry argument to the old get acl inode operation would
>   amount to passing a dentry to the permission inode operation which we
>   shouldn't and probably can't do.
>
>   So instead of extending the existing inode operation Christoph
>   suggested to add a new one. He also requested to ensure that the get
>   and set acl inode operation taking a dentry are consistently named. So
>   for this version the old get acl operation is renamed to
>   ->get_inode_acl() and a new ->get_acl() inode operation taking a
>   dentry is added. With this we can give both 9p and cifs get and set
>   acl inode operations and in turn remove their complex custom posix
>   xattr handlers.
>
> * I've done a full audit of every codepaths using variant of the
>   current generic xattr api to get and set posix acls and surprisingly
>   it isn't that many places. There's of course always a chance that I
>   might have missed some and I'm sure we'll find them soon enough.
>
>   The crucial codepaths to be converted are obviously stacking
>   filesystems such as ecryptfs and overlayfs.
>
>   For a list of all callers currently using generic xattr api helpers
>   see [2] including comments whether they support posix acls or not.
>
> * The old vfs generic posix acl infrastructure doesn't obey
>   the create and replace semantics promised on the setxattr(2) manpage.
>   This patch series doesn't address this. It really is something we
>   should revisit later though.
>
> The patch series is roughly organized as follows:
>
> // intended to be a non-functional change
> 1. Change existing set acl inode operation to take a dentry argument.
>
> // intended to be a non-functional change
> 2. Rename existing get acl method.
>
> // intended to be a non-functional change
> 3. Implement get and set acl inode operations for filesystems that
>    couldn't implement one before because of the missing dentry. That's
>    mostly 9p and cifs.
>
> // intended to be a non-functional change
> 4. Build posix acl api, i.e., add vfs_get_acl(), vfs_remove_acl(), and
>    vfs_set_acl() including security and integrity hooks.
>
> // intended to be a non-functional change
> 5. Implement get and set acl inode operations for stacking filesystems.
>
> // semantical change
> 6. Switch posix acl handling in stacking filesystems to new posix acl
>    api now that all filesystems it can stack upon support it.
>
> // semantical change
> 7. Switch vfs to new posix acl api
>
> 8. Remove all now unused helpers
>
> The series can be pulled from:
>
> https://gitlab.com/brauner/linux/-/commits/fs.acl.rework
> https://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git/log/?h=fs.acl.rework
>
> The series contains a few preliminary patches which are scheduled for
> the next merge window. It was just easier to base the series on top of
> them. But if you pull this branch you'll get them included.
>
> I've been working on this for a while and before going any further it'd
> be nice to get some reviews. I think that it should be fine to have get
> and set acl inode operations that operate on the dentry at least nothing
> stuck out immediately that would prevent this. But obviously having
> other people point out issues with that would be helpful.
>
> Thanks to Seth for a lot of good discussion around this and
> encouragement and input from Christoph.
>
> [1]: https://lore.kernel.org/all/20220801145520.1532837-1-brauner@kernel.org
> [2]: https://gist.github.com/brauner/12c795b93a05dc3b3056b1982549a633
>
> v1: https://lore.kernel.org/linux-cifs/20220922151728.1557914-1-brauner@kernel.org
>
> Thanks!
> Christian
>
> Christian Brauner (30):
>   orangefs: rework posix acl handling when creating new filesystem
>     objects
>   fs: pass dentry to set acl method
>   fs: rename current get acl method
>   fs: add new get acl method
>   cifs: implement get acl method
>   cifs: implement set acl method
>   9p: implement get acl method
>   9p: implement set acl method
>   acl: add vfs_set_acl()
>   security: add set acl hook
>   selinux: implement set acl hook
>   smack: implement set acl hook
>   evm: implement set acl hook
>   acl: use set acl hook
>   evm: add post set acl hook
>   acl: add vfs_get_acl()
>   acl: add vfs_remove_acl()
>   evm: simplify evm_xattr_acl_change()
>   ksmbd: use vfs_remove_acl()
>   ecryptfs: implement get acl method
>   ecryptfs: implement set acl method
>   ovl: implement get acl method
>   ovl: implement set acl method
>   ovl: use posix acl api
>   xattr: use posix acl api
>   ecryptfs: use stub posix acl handlers
>   ovl: use stub posix acl handlers
>   cifs: use stub posix acl handlers
>   9p: use stub posix acl handlers
>   acl: remove a slew of now unused helpers
>
>  Documentation/filesystems/locking.rst |   4 +-
>  Documentation/filesystems/porting.rst |   4 +-
>  Documentation/filesystems/vfs.rst     |   3 +-
>  fs/9p/acl.c                           | 295 +++++------
>  fs/9p/acl.h                           |   8 +-
>  fs/9p/vfs_inode_dotl.c                |   4 +
>  fs/9p/xattr.c                         |   7 +-
>  fs/9p/xattr.h                         |   2 -
>  fs/bad_inode.c                        |   4 +-
>  fs/btrfs/acl.c                        |   3 +-
>  fs/btrfs/ctree.h                      |   2 +-
>  fs/btrfs/inode.c                      |   8 +-
>  fs/ceph/acl.c                         |   3 +-
>  fs/ceph/dir.c                         |   2 +-
>  fs/ceph/inode.c                       |   4 +-
>  fs/ceph/super.h                       |   2 +-
>  fs/cifs/cifsacl.c                     | 141 ++++++
>  fs/cifs/cifsfs.c                      |   4 +
>  fs/cifs/cifsproto.h                   |  20 +-
>  fs/cifs/cifssmb.c                     | 206 +++++---
>  fs/cifs/xattr.c                       |  68 +--
>  fs/ecryptfs/inode.c                   |  32 ++
>  fs/erofs/inode.c                      |   6 +-
>  fs/erofs/namei.c                      |   2 +-
>  fs/ext2/acl.c                         |   3 +-
>  fs/ext2/acl.h                         |   2 +-
>  fs/ext2/file.c                        |   2 +-
>  fs/ext2/inode.c                       |   2 +-
>  fs/ext2/namei.c                       |   4 +-
>  fs/ext4/acl.c                         |   3 +-
>  fs/ext4/acl.h                         |   2 +-
>  fs/ext4/file.c                        |   2 +-
>  fs/ext4/inode.c                       |   2 +-
>  fs/ext4/namei.c                       |   4 +-
>  fs/f2fs/acl.c                         |   4 +-
>  fs/f2fs/acl.h                         |   2 +-
>  fs/f2fs/file.c                        |   4 +-
>  fs/f2fs/namei.c                       |   4 +-
>  fs/fuse/acl.c                         |   3 +-
>  fs/fuse/dir.c                         |   4 +-
>  fs/fuse/fuse_i.h                      |   2 +-
>  fs/gfs2/acl.c                         |   3 +-
>  fs/gfs2/acl.h                         |   2 +-
>  fs/gfs2/inode.c                       |   6 +-
>  fs/internal.h                         |   1 +
>  fs/jffs2/acl.c                        |   3 +-
>  fs/jffs2/acl.h                        |   2 +-
>  fs/jffs2/dir.c                        |   2 +-
>  fs/jffs2/file.c                       |   2 +-
>  fs/jffs2/fs.c                         |   2 +-
>  fs/jfs/acl.c                          |   3 +-
>  fs/jfs/file.c                         |   4 +-
>  fs/jfs/jfs_acl.h                      |   2 +-
>  fs/jfs/namei.c                        |   2 +-
>  fs/ksmbd/smb2pdu.c                    |   4 +-
>  fs/ksmbd/smbacl.c                     |   4 +-
>  fs/ksmbd/vfs.c                        |  17 +-
>  fs/ksmbd/vfs.h                        |   4 +-
>  fs/namei.c                            |   2 +-
>  fs/nfs/nfs3_fs.h                      |   2 +-
>  fs/nfs/nfs3acl.c                      |   3 +-
>  fs/nfs/nfs3proc.c                     |   4 +-
>  fs/nfsd/nfs2acl.c                     |   4 +-
>  fs/nfsd/nfs3acl.c                     |   4 +-
>  fs/nfsd/vfs.c                         |   4 +-
>  fs/ntfs3/file.c                       |   4 +-
>  fs/ntfs3/namei.c                      |   4 +-
>  fs/ntfs3/ntfs_fs.h                    |   4 +-
>  fs/ntfs3/xattr.c                      |   9 +-
>  fs/ocfs2/acl.c                        |   3 +-
>  fs/ocfs2/acl.h                        |   2 +-
>  fs/ocfs2/file.c                       |   4 +-
>  fs/ocfs2/namei.c                      |   2 +-
>  fs/orangefs/acl.c                     |  47 +-
>  fs/orangefs/inode.c                   |  47 +-
>  fs/orangefs/namei.c                   |   2 +-
>  fs/orangefs/orangefs-kernel.h         |   9 +-
>  fs/orangefs/orangefs-utils.c          |  12 +-
>  fs/overlayfs/copy_up.c                |  38 ++
>  fs/overlayfs/dir.c                    |  22 +-
>  fs/overlayfs/inode.c                  | 151 +++++-
>  fs/overlayfs/overlayfs.h              |  34 +-
>  fs/overlayfs/super.c                  | 107 +---
>  fs/posix_acl.c                        | 681 +++++++++++++-------------
>  fs/reiserfs/acl.h                     |   6 +-
>  fs/reiserfs/file.c                    |   2 +-
>  fs/reiserfs/inode.c                   |   2 +-
>  fs/reiserfs/namei.c                   |   4 +-
>  fs/reiserfs/xattr_acl.c               |   9 +-
>  fs/xattr.c                            |  78 ++-
>  fs/xfs/xfs_acl.c                      |   3 +-
>  fs/xfs/xfs_acl.h                      |   2 +-
>  fs/xfs/xfs_iops.c                     |  16 +-
>  include/linux/evm.h                   |  23 +
>  include/linux/fs.h                    |  10 +-
>  include/linux/lsm_hook_defs.h         |   2 +
>  include/linux/lsm_hooks.h             |   4 +
>  include/linux/posix_acl.h             |  39 +-
>  include/linux/posix_acl_xattr.h       |  43 +-
>  include/linux/security.h              |  11 +
>  include/linux/xattr.h                 |   8 +
>  io_uring/xattr.c                      |   2 +
>  mm/shmem.c                            |   2 +-
>  security/integrity/evm/evm_main.c     | 128 +++--
>  security/security.c                   |  16 +
>  security/selinux/hooks.c              |   8 +
>  security/smack/smack_lsm.c            |  24 +
>  107 files changed, 1550 insertions(+), 1043 deletions(-)
>
>
> base-commit: 38e316398e4e6338b80223fb5f74415c0513718f


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
