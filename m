Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA566B5AFF
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 12:18:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1paxEt-0000Pf-Ud;
	Sat, 11 Mar 2023 11:18:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1paxEg-0000Ns-Rc
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 11:18:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4TvOdkKIzJlisioGTQqyrn/AqrN6FeeQpMMQk2PT44Q=; b=KPkzEX2xjwMp3ybRsOcmi+ejpi
 XK2d7DuTi5F6rd66vDWxu56i2AsZmHsWTCE0MTAUkmUgRv6BQ1b7Dckmaqrfg1nG1TkRCC7xT52Nw
 nLnApW/o0qYdhkFiUMmu96hIDpd2qL97LD/b4zMdO8aMu6L7NfICkWewzPbMWCeJsj/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4TvOdkKIzJlisioGTQqyrn/AqrN6FeeQpMMQk2PT44Q=; b=DAFx+ury+8CRr/APdzgvhrACVw
 TZEgeI/QVu7iVhE3lNosafWDH/PgXvfNG0ayOyrAo6M6kbR5HNSoAPm2dSeB6G9iCBsYBDtPeBef6
 aPr58ILyFT4ne7+63Y7+L43bxiPrbc+GN4ZxKyqyL4HpLEBDyurIy7D5mpPQpQxvgoFE=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paxEa-0006rK-Mu for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 11:17:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=4TvOdkKIzJlisioGTQqyrn/AqrN6FeeQpMMQk2PT44Q=; b=VJVj9abWMgNguRjHNq3K7GaVYP
 ji4ey1JrT/AYdBec7ZUYFP5ps8cyolUBlNYlO2TiLBmoC29Y6psYZrWh4L/2Wm413X9fqZ3bnt7QZ
 8DtAWw0i6pn25o2pGkI36Zd4WxC2Tz7ChUj16W7i3clBNL1EtZkC4M06bgmJ+kik86zqBj7MJXy/T
 mGC2vtprSscfqjKAbvr1JyHIpLflIfw8COt1eFrmBVcCBGaCNKQVVFxwKZEM1tJZaUr33Tb6PhkCu
 MdG+dYLGlk24jbJB4ua8onun9kfHdIGb/+tvhVcHtWeBTZrYbrg0FcNQFSWdAgPX7jHBy0noNYFw4
 DSktYYQYNThG/1aLE6lQkuR9tLexm4+/kVYY1oAb1VSF1xc+4eHA4h2/MdnVZKd8HsLYSUwPLZGaG
 Zwi/2y9Xnx4l/D/M7KcKgtO76bnwrnFknb4inppxIf0x7rmmvM1y6JYW26WDoTDKSPNg2/fhhnx01
 +KY4hXlmIgdt12+2+6xp1/tqUF1gzvmlO7rEvzVA7dfd5RvBB8bPsckMgnWGpEKywfV9wdze7I85B
 3rHyvX8UEJgWfHe6dMtCdGX6gk0Ys3WtX+30AQgxk+YNAKc4aJOJXYstvDbifYjz3ifQsO8kbrnyM
 vzX6OtvCVqZFHOo0FeBmQzzoNCbcVcV6dK1p/a/Qc=;
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 Ivan Orlov <ivan.orlov0322@gmail.com>
Date: Sat, 11 Mar 2023 12:17:43 +0100
Message-ID: <15987509.0H6QrEVh2d@silver>
In-Reply-To: <20230311063411.7884-1-ivan.orlov0322@gmail.com>
References: <20230311063411.7884-1-ivan.orlov0322@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, March 11, 2023 7:34:11 AM CET Ivan Orlov wrote:
 > KASAN reported the following issue: > [ 36.825817][ T5923] BUG: KASAN:
 wild-memory-access in v9fs_get_acl+0x1a4/0x390 > [ 36.827479][ T59 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1paxEa-0006rK-Mu
Subject: Re: [V9fs-developer] [PATCH v2] 9P FS: Fix wild-memory-access write
 in v9fs_get_acl
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
Cc: Ivan Orlov <ivan.orlov0322@gmail.com>, linux-kernel@vger.kernel.org,
 syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, v9fs-developer@lists.sourceforge.net,
 himadrispandya@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Saturday, March 11, 2023 7:34:11 AM CET Ivan Orlov wrote:
> KASAN reported the following issue:
> [   36.825817][ T5923] BUG: KASAN: wild-memory-access in v9fs_get_acl+0x1a4/0x390
> [   36.827479][ T5923] Write of size 4 at addr 9fffeb37f97f1c00 by task syz-executor798/5923
> [   36.829303][ T5923]
> [   36.829846][ T5923] CPU: 0 PID: 5923 Comm: syz-executor798 Not tainted 6.2.0-syzkaller-18302-g596b6b709632 #0
> [   36.832110][ T5923] Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/21/2023
> [   36.834464][ T5923] Call trace:
> [   36.835196][ T5923]  dump_backtrace+0x1c8/0x1f4
> [   36.836229][ T5923]  show_stack+0x2c/0x3c
> [   36.837100][ T5923]  dump_stack_lvl+0xd0/0x124
> [   36.838103][ T5923]  print_report+0xe4/0x4c0
> [   36.839068][ T5923]  kasan_report+0xd4/0x130
> [   36.840052][ T5923]  kasan_check_range+0x264/0x2a4
> [   36.841199][ T5923]  __kasan_check_write+0x2c/0x3c
> [   36.842216][ T5923]  v9fs_get_acl+0x1a4/0x390
> [   36.843232][ T5923]  v9fs_mount+0x77c/0xa5c
> [   36.844163][ T5923]  legacy_get_tree+0xd4/0x16c
> [   36.845173][ T5923]  vfs_get_tree+0x90/0x274
> [   36.846137][ T5923]  do_new_mount+0x25c/0x8c8
> [   36.847066][ T5923]  path_mount+0x590/0xe58
> [   36.848147][ T5923]  __arm64_sys_mount+0x45c/0x594
> [   36.849273][ T5923]  invoke_syscall+0x98/0x2c0
> [   36.850421][ T5923]  el0_svc_common+0x138/0x258
> [   36.851397][ T5923]  do_el0_svc+0x64/0x198
> [   36.852398][ T5923]  el0_svc+0x58/0x168
> [   36.853224][ T5923]  el0t_64_sync_handler+0x84/0xf0
> [   36.854293][ T5923]  el0t_64_sync+0x190/0x194
> 
> Calling '__v9fs_get_acl' method in 'v9fs_get_acl' creates the
> following chain of function calls:
> 
> __v9fs_get_acl
> 	v9fs_fid_get_acl
> 		v9fs_fid_xattr_get
> 			p9_client_xattrwalk
> 
> Function p9_client_xattrwalk accepts a pointer to u64-typed
> variable attr_size and puts some u64 value into it. However,
> after the executing the p9_client_xattrwalk, in some circumstances
> we assign the value of u64-typed variable 'attr_size' to the
> variable 'retval', which we will return. However, the type of
> 'retval' is ssize_t, and if the value of attr_size is larger
> than SSIZE_MAX, we will face the signed type overflow. If the
> overflow occurs, the result of v9fs_fid_xattr_get may be
> negative, but not classified as an error. When we try to allocate
> an acl with 'broken' size we receive an error, but don't process
> it. When we try to free this acl, we face the 'wild-memory-access'
> error (because it wasn't allocated).
> 
> This patch will add new condition to the 'v9fs_fid_xattr_get'
> function, so it will return an EOVERFLOW error if the 'attr_size'
> is larger than SSIZE_MAX.
> 
> In this version of the patch I removed explicit type conversion and
> added separate condition to check the possible overflow and return
> an error (in v1 version I've just modified the existing condition).
> 
> Reported-by: syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com
> Link: https://syzkaller.appspot.com/bug?id=fbbef66d9e4d096242f3617de5d14d12705b4659
> Signed-off-by: Ivan Orlov <ivan.orlov0322@gmail.com>
> ---
>  fs/9p/xattr.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
> index 50f7f3f6b55e..6affd6b3f5e6 100644
> --- a/fs/9p/xattr.c
> +++ b/fs/9p/xattr.c
> @@ -35,10 +35,14 @@ ssize_t v9fs_fid_xattr_get(struct p9_fid *fid, const char *name,
>  		return retval;
>  	}
>  	if (attr_size > buffer_size) {
> -		if (!buffer_size) /* request to get the attr_size */
> -			retval = attr_size;
> -		else
> +		if (!buffer_size) {/* request to get the attr_size */
> +			if (attr_size > SSIZE_MAX)
> +				retval = -EOVERFLOW;
> +			else
> +				retval = attr_size;
> +		} else {
>  			retval = -ERANGE;
> +		}

I would have written it in different style:

    if (buffer_size)
        retval = -ERANGE;
    else if (attr_size > SSIZE_MAX)
        retval = -EOVERFLOW;
    else
        retval = attr_size; /* request to get the attr_size */

But the behaviour change itself makes sense, so:

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

>  	} else {
>  		iov_iter_truncate(&to, attr_size);
>  		retval = p9_client_read(attr_fid, 0, &to, &err);
> 




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
