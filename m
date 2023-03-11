Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E11286B590F
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 07:46:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1paszu-0008NS-Dj;
	Sat, 11 Mar 2023 06:46:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ivan.orlov0322@gmail.com>) id 1paszt-0008NM-Gs
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 06:46:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ecFiLM2NOIcmzrMEnFX3qID1W2x+qNart8iHS9x3+NY=; b=FAv3xk5ywHHifAWdCNY5cAVt6a
 3xpoehtAz7sFX+ud7LdgocRibyFkSAfJPzWXGpeX3xVPjFaXy8TMQDuNO7UBoL9Bnc88iuakcuGFO
 V9+G5mtga+BGRlgE4ju98NFm6fmHxiWHLtO3YLCtUTYaKPOyDlaCtumrxFS/RfptCt6s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ecFiLM2NOIcmzrMEnFX3qID1W2x+qNart8iHS9x3+NY=; b=Kc6zyXC2xT8aSIM2rIo/pJP/R7
 645izjZXqbYHKQzzUBvLNrwhCDt05KItNlgcFFWt/KwwNG9ryiQFVOnnGhjtxuhAfFFH9LP9AG5Uv
 Syp7AX7CT4hSg9i5jRPUfBOOcxnp6R863R60eSHStDFpJPH90bQXW0x0qGKpo+dMUZ+w=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1paszq-0007aT-T5 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 06:46:29 +0000
Received: by mail-ed1-f52.google.com with SMTP id g10so400309eda.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Mar 2023 22:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678517179;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ecFiLM2NOIcmzrMEnFX3qID1W2x+qNart8iHS9x3+NY=;
 b=jlyIVZeyrcS2IlBV31rw0plRZrWDMwbR5ancg1fckRmpLSHoHFa39MKkQPBvBelJ3o
 VI5/dJCcqkSHlaihGlwe4N9ejnBce02gri3z5OHVPlm2QNLh6RZIAravfMDFAnXHOQ7E
 7h0vs1AAzmM04Zg0d4PUzMLfsV9W7Ky8a7SgC2J72Ysp0N5JNriF2MYQ/E7sPw5OkNFB
 zZ1ENjQHv+h72Q3f5+U07cp1Z1nZ6xI4Si6Wp/jeZ67fpFmr7nCK1o8ByR4vpHZk4Pmb
 V6fRdLb1UR6N+uZjN/1rKoWUrBu27d+n7UlfsVPI757OFNgYeumL3fR9ElaYfFjGNPZX
 7K7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678517179;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ecFiLM2NOIcmzrMEnFX3qID1W2x+qNart8iHS9x3+NY=;
 b=zUTAiUJl+kJ9ATlSYL2KqRvpCWJmUN3ZP8863iLYgtKKXJvYUyTGu3pWBNR0yk4+0J
 aw7LuG76QeH+T3P7Ip9apcT3fN+N0nI8gbaJXc2nAksuoWGn1hJgy70kHIbb6GBMtdho
 uuABDjB0+OHsiy09KhGNT+uVriyKNw53z+6x+cNgaCEO7CRUHfkf4KLE1y2KwMppwH2I
 xaWaDhTJN995NFZYXS8m7MpjF9CVyhvhx2UaNkjRgsXDzIr9ZpFO6xDbKboF/kmLWUZm
 pnVdumb0EegPQZUQUftEY/tD5AA/1DSlfelBx9CutClZlETqv3mFSLVfzG1Fn0PrFXN1
 4o2A==
X-Gm-Message-State: AO0yUKUSdnUkY4433B8APa0/waa6NwlssWq9dZLJl/lcklQPBuCWOisr
 m2NTLth7uD1XKZ2cwZPWts8=
X-Google-Smtp-Source: AK7set91MWvVpLbTHsjGIj4gqdvNh5aeBIpo4n4HWR3bKEPO1ZoBMVZW1PTUMUJo7TUgTJGt2xsCZg==
X-Received: by 2002:a17:906:518e:b0:882:bffc:f2d2 with SMTP id
 y14-20020a170906518e00b00882bffcf2d2mr8489802ejk.2.1678517179517; 
 Fri, 10 Mar 2023 22:46:19 -0800 (PST)
Received: from [192.168.10.15] ([37.252.81.68])
 by smtp.gmail.com with ESMTPSA id
 ot7-20020a170906ccc700b008ef13127b5fsm771602ejb.29.2023.03.10.22.46.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Mar 2023 22:46:19 -0800 (PST)
Message-ID: <0059d07f-97ce-724a-39ec-2a640ba82ef5@gmail.com>
Date: Sat, 11 Mar 2023 10:46:16 +0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com
References: <20230311063411.7884-1-ivan.orlov0322@gmail.com>
From: Ivan Orlov <ivan.orlov0322@gmail.com>
In-Reply-To: <20230311063411.7884-1-ivan.orlov0322@gmail.com>
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/11/23 10:34,
 Ivan Orlov wrote: > KASAN reported the following
 issue: > [ 36.825817][ T5923] BUG: KASAN: wild-memory-access in
 v9fs_get_acl+0x1a4/0x390
 > [ 36.827479][ T5923] Write of size 4 at ad [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ivan.orlov0322[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ivan.orlov0322[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.52 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1paszq-0007aT-T5
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
Cc: v9fs-developer@lists.sourceforge.net, himadrispandya@gmail.com,
 syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 3/11/23 10:34, Ivan Orlov wrote:
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
>   fs/9p/xattr.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
> index 50f7f3f6b55e..6affd6b3f5e6 100644
> --- a/fs/9p/xattr.c
> +++ b/fs/9p/xattr.c
> @@ -35,10 +35,14 @@ ssize_t v9fs_fid_xattr_get(struct p9_fid *fid, const char *name,
>   		return retval;
>   	}
>   	if (attr_size > buffer_size) {
> -		if (!buffer_size) /* request to get the attr_size */
> -			retval = attr_size;
> -		else
> +		if (!buffer_size) {/* request to get the attr_size */
> +			if (attr_size > SSIZE_MAX)
> +				retval = -EOVERFLOW;
> +			else
> +				retval = attr_size;
> +		} else {
>   			retval = -ERANGE;
> +		}
>   	} else {
>   		iov_iter_truncate(&to, attr_size);
>   		retval = p9_client_read(attr_fid, 0, &to, &err);

#syz test 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
