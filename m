Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F22AF6B58A6
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 06:33:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1parqv-0005L5-2B;
	Sat, 11 Mar 2023 05:33:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <code@siddh.me>) id 1parqt-0005Ky-TW
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 05:33:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=654fJPoPkkA2Ofkz6DC3Gzmc98pclBqXOnVUTQHbzA0=; b=hRkGP437jy5B94xl4DlQzW81vU
 nnlu4sTnJ7MPhYG7qrhBCd/5dfMZYo8jR072xesbHQsnlsDOAsu1JOkUxrSM5pWex7zvdX+eBdxAg
 6frWthyA+S9eCiC9ry0fzVI3gXDkHvolhRCMh3JqHA0Xblj1A5kYamDIHOF0nXNjiNj0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=654fJPoPkkA2Ofkz6DC3Gzmc98pclBqXOnVUTQHbzA0=; b=WmtRdHh7OWwSuBK6eDEHhUgSKU
 2RcLBRIJRxBwVpX1Q9EQR6iwhGDBRVYATvU4RcKKjCvUI1fiaBAzuCi7pb9U9f1kwx0tNMFd3o7m3
 9Pp5eOkbw3BkY4Uei3v19L7ZmI0DBar57TEWYCxkd+wd5FuySxEPawFE7QQin47gvm3s=;
Received: from sender-of-o51.zoho.in ([103.117.158.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1parqn-004PiJ-0p for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 05:33:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1678511826; cv=none; d=zohomail.in; s=zohoarc; 
 b=MAJxP/Y7VUsT1dmXNCicZJV93o5qJ8SDgA9HaeF2w7v9KKUMMdg/i+PQZQm1Q7L9GGTGRuBw2nk/NVFwWEuIAnBawoQNuUf6zXs+UeQlqew3SwY+25X8sJi8qFBJVLoEXg5wO4cOWgDmSIhOpDcyMnDd2pt/We22PaQPp4OVBnc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1678511826;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=654fJPoPkkA2Ofkz6DC3Gzmc98pclBqXOnVUTQHbzA0=; 
 b=GJFfUXgpRMqjveAbQW/lz0dr4Mi0CXy80LMyCXE7axJL3mmgtXGJik72b35VIQHOsZeAggF4rW9f6nUtXZg22GkyDZQxNz+7yqu+HnreM0wJOXLBwDaM+qlZ3mTN8L4ITz/8KNCFdG3ajiy6oPgMgos86znhG577qgQ+17/MZ0E=
ARC-Authentication-Results: i=1; mx.zohomail.in; dkim=pass  header.i=siddh.me;
 spf=pass  smtp.mailfrom=code@siddh.me;
 dmarc=pass header.from=<code@siddh.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1678511826; 
 s=zmail; d=siddh.me; i=code@siddh.me;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=654fJPoPkkA2Ofkz6DC3Gzmc98pclBqXOnVUTQHbzA0=;
 b=UUpxXdenkeKVtU8SYlGtn2SWUiFlo1ccTlbh5Kz61WbptrGqZy3S2WQTO1qxP1ij
 kwvlLTLm4W8FIqwy+/ZeQQOhXKgJUzPmv9e+PX2YzzRrkUfZ+g4Y7ll+ohWs7MUaCNM
 p9s1udkWTMfCFlxEqsUON/hPjCqk8i4+JNzZ0CRU=
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1678511814182525.992911523984;
 Sat, 11 Mar 2023 10:46:54 +0530 (IST)
Date: Sat, 11 Mar 2023 10:46:54 +0530
From: Siddh Raman Pant <code@siddh.me>
To: "Ivan Orlov" <ivan.orlov0322@gmail.com>
Message-ID: <186cf19b619.4777c80c154603.5258165448157616593@siddh.me>
In-Reply-To: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
References: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 11 Mar 2023 01:56:19 +0530, Ivan Orlov wrote: > KASAN
 reported the following issue: > [...] > > Calling '__v9fs_get_acl' method
 in 'v9fs_get_acl' creates the > following chain of function call [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.117.158.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1parqn-004PiJ-0p
Subject: Re: [V9fs-developer] [PATCH] 9P FS: Fix wild-memory-access write in
 v9fs_get_acl
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
Cc: lucho <lucho@ionkov.net>, ericvh <ericvh@gmail.com>,
 linux_oss <linux_oss@crudebyte.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, syzbot+cb1d16facb3cc90de5fb
 <syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com>,
 v9fs-developer <v9fs-developer@lists.sourceforge.net>,
 linux-kernel-mentees <linux-kernel-mentees@lists.linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, 11 Mar 2023 01:56:19 +0530, Ivan Orlov wrote:
> KASAN reported the following issue:
> [...]
> 
> Calling '__v9fs_get_acl' method in 'v9fs_get_acl' creates the
> following chain of function calls:
> 
> __v9fs_get_acl
>       v9fs_fid_get_acl
>               v9fs_fid_xattr_get
>                       p9_client_xattrwalk
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
> This patch will modify the condition in the 'v9fs_fid_xattr_get'
> function, so it will return an error if the 'attr_size' is larger
> than SSIZE_MAX.
> 
> Reported-by: syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com
> Link: https://syzkaller.appspot.com/bug?id=fbbef66d9e4d096242f3617de5d14d12705b4659
> Signed-off-by: Ivan Orlov ivan.orlov0322@gmail.com>

You should also test with Syzkaller if it gave a reproducer.
Check the following docs to know about it:
https://github.com/google/syzkaller/blob/master/docs/syzbot.md#testing-patches

> ---
>  fs/9p/xattr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
> index 50f7f3f6b55e..d6f7450107a8 100644
> --- a/fs/9p/xattr.c
> +++ b/fs/9p/xattr.c
> @@ -35,7 +35,7 @@ ssize_t v9fs_fid_xattr_get(struct p9_fid *fid, const char *name,
>  		return retval;
>  	}
>  	if (attr_size > buffer_size) {
> -		if (!buffer_size) /* request to get the attr_size */
> +		if (!buffer_size && attr_size <= (u64) SSIZE_MAX) /* request to get the attr_size */
>  			retval = attr_size;
>  		else
>  			retval = -ERANGE;

You should use EOVERFLOW for overflow error. Make a new conditional
instead of using AND. Also, the explicit u64 cast for SSIZE_MAX can
be dropped for better readability.

Thanks,
Siddh

> -- 
> 2.34.1
> 
> _______________________________________________
> Linux-kernel-mentees mailing list
> Linux-kernel-mentees@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/linux-kernel-mentees


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
