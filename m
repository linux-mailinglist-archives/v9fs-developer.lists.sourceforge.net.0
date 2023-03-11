Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF7B6B59FB
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 10:20:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pavOr-0005qN-Lj;
	Sat, 11 Mar 2023 09:20:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ivan.orlov0322@gmail.com>) id 1pavOS-0005q1-Tb
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 09:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pp15R7AN1g9JfNTcPdKWcY79zOLhi73tWbb1tIB1i+0=; b=KRVNadXiJDzqIa8kLyLbWPvf/O
 InEn7AK1yOsA7EeurgBmG32BwamcR73PK/e/f6OovnxIZqSHhHejywIVKFQtRbJPKxZCGcmC4DI54
 c+4zVCFg60O9OLUxHORJfqXQORoEf433P/y9jKIdKx+vTxeSn6ZNcM2yD+D8swJn/sIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pp15R7AN1g9JfNTcPdKWcY79zOLhi73tWbb1tIB1i+0=; b=GWuUrpWeEHhRs3pDopCEq8480S
 0t7gP4s1JEF02mE8Td2WMoNchbOkKUuf7v1medV1DPriPw4y4nBJFRXGx9TKAo181VdOA3qZzY43K
 HYrzJwduJXIcMFnb926kii/1wHjxBuECIiAxVashztgXy59pGW00TT7wqowJqJ7Uh4lg=;
Received: from mail-ed1-f50.google.com ([209.85.208.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pavOP-004Wt8-OM for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 09:20:01 +0000
Received: by mail-ed1-f50.google.com with SMTP id ec29so30069893edb.6
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Mar 2023 01:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678526387;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Pp15R7AN1g9JfNTcPdKWcY79zOLhi73tWbb1tIB1i+0=;
 b=FDCnm4WSk24SppuAS2DjJpqkLKAYCHeBVG/dBtdTyddqYcrKXp/HqV8qMlm0NUimDE
 IsQQIGzs1Vx1p+P3euE4+GSKWH26lovKkxHZQBJxT8xm3KuEZxjcfKOzpUUnqRCm3v27
 igkFAO8f6WKemxy+zNn9sGwcFRzeMjB9SWRiq3wZ3ZDLA69gLkMgC5w0uHnbw42cAxyy
 sJVB5vnSwIsuE7rC/frjFSOlIIyYkfySHXXdPMvA9rGzowgUipfKWycz7Eme/fyePEGX
 8D1E7JSKjCXnIaCD8BXbRbU5oYzY3drkblT8ZVvP4R5261OASMTSMn+o3gnnIXJvwGWo
 sH4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678526387;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Pp15R7AN1g9JfNTcPdKWcY79zOLhi73tWbb1tIB1i+0=;
 b=k9DfK9+uZ/XtHXP33Na1LpCySA01JsSQIciFVaSrGCvdfXLDAZT3yqXHJnEaH7Si1/
 leCVzq196L/FUfLpsvnoLI4V3pevs8nfkylmUdkNCz6osP1dLNH5vFYafQTS9FypTdsk
 Niestoxl41KbyXNCBveV0T7yO/ve3vI/bwTG/cQWq3cvj9zOFZnWvi3l1pR8rObB0R0b
 uzhCX9jQzHAjzA3X98zOkwYmVprZ+xx+1gPQOSURL8RXLgpu9p7VDX/VzaS9rcmYtmTr
 Unj03j5xu5r1bKa+anX1Dts0fUsYmjFularWUfTMNk8biWqJsyiZ8dCNtQUdpuPtW0J/
 9VrQ==
X-Gm-Message-State: AO0yUKVLcAbGrBUitCOdLvoMyU+NyQKTNNIHWR2VHrw5dr1shBsE7jit
 Iei7vjVbhc2EveQhR57gTyHIxPjAco3CnA==
X-Google-Smtp-Source: AK7set8/lXEbMZ7dy3RnFiL9KBD46H5wRKw3OpbFtqMiOZiqL6p61stQL4FSFsmU6+NPOdBH0PNgMw==
X-Received: by 2002:a17:906:208a:b0:889:d24e:6017 with SMTP id
 10-20020a170906208a00b00889d24e6017mr4875012ejq.3.1678526386798; 
 Sat, 11 Mar 2023 01:19:46 -0800 (PST)
Received: from [192.168.10.15] ([37.252.81.68])
 by smtp.gmail.com with ESMTPSA id
 a20-20020a1709065f9400b008be0b7242d5sm895678eju.90.2023.03.11.01.19.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Mar 2023 01:19:46 -0800 (PST)
Message-ID: <9e341f7d-b7b6-0237-2a2d-8395eef8ca04@gmail.com>
Date: Sat, 11 Mar 2023 13:19:44 +0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 linux_oss@crudebyte.com
References: <20230311063411.7884-1-ivan.orlov0322@gmail.com>
From: Ivan Orlov <ivan.orlov0322@gmail.com>
In-Reply-To: <20230311063411.7884-1-ivan.orlov0322@gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/11/23 10:34,
 Ivan Orlov wrote: > KASAN reported the following
 issue: > [ 36.825817][ T5923] BUG: KASAN: wild-memory-access in
 v9fs_get_acl+0x1a4/0x390
 > [ 36.827479][ T5923] Write of size 4 at ad [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.50 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ivan.orlov0322[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ivan.orlov0322[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pavOP-004Wt8-OM
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

Tested via syzkaller, this patch fixes the bug (see patch testing requests):
https://syzkaller.appspot.com/bug?id=fbbef66d9e4d096242f3617de5d14d12705b4659


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
