Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D0D3AB4C9
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Jun 2021 15:31:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lts70-0006Vm-3e; Thu, 17 Jun 2021 13:31:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1lts6y-0006Va-OU
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Jun 2021 13:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TMovp/d/024BNKenOEssFH9bGIj4wb2wQ+scwOxwK/o=; b=O5zVmGPoUsJJg56UczzgOBnkZf
 tsT1+o2/uv4anVuKI6EDkt8sIdQWt2Zsrn++TlxpVPcZcml0eoqUU8wNM4C/iXlXdxb5TCZjeax6R
 UB8aywF2vFbgQfNNoYU7IQx2oFopnAHmG6WkAcXk/S8t8QyexnDjBdPYuYq8qEgSnCxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TMovp/d/024BNKenOEssFH9bGIj4wb2wQ+scwOxwK/o=; b=UPmE1vPc55iPgCTHat7ZvfhTx+
 OiucwRTpC/s3ckZFn9zmxv3UpqFJ6LeGRcOJFKAvIwq6FhiIIj5rbq8eW5+SpgjkQB6al5UNqq06T
 OdYuTkM0qM8OaaFVC6kJIIxGpVeuNcYCt5Jv66B1AmZPfRb9e2zWJhx6opSchL6s74l4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lts6w-0002dr-DL
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Jun 2021 13:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623936665;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TMovp/d/024BNKenOEssFH9bGIj4wb2wQ+scwOxwK/o=;
 b=RnYGCoirfJLXSfbmUxVdJBXIAD/axBjOwi9Fxigui1gVwR48qoMFhT0v4U0/3FiKutDJBm
 pcm01wEFYDpimV7MqohYhHXpbkSj/Xv+R5ON7Cw3EaIYVjjwpCDoxSLdLsKTqO6T5wZh4N
 Pdm07HYkczFZu0L7yMIRFgwNGseQa9g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-Bpa5gYRbOL-FXBAJ9jWMlw-1; Thu, 17 Jun 2021 09:31:02 -0400
X-MC-Unique: Bpa5gYRbOL-FXBAJ9jWMlw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 10775192FDA8;
 Thu, 17 Jun 2021 13:31:01 +0000 (UTC)
Received: from horse.redhat.com (ovpn-116-162.rdu2.redhat.com [10.10.116.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8F58A62462;
 Thu, 17 Jun 2021 13:30:53 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id E8277220BCF; Thu, 17 Jun 2021 09:30:52 -0400 (EDT)
Date: Thu, 17 Jun 2021 09:30:52 -0400
From: Vivek Goyal <vgoyal@redhat.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20210617133052.GA1142820@redhat.com>
References: <20210614174454.903555-1-vgoyal@redhat.com>
 <YMsgaPS90iKIqSvi@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMsgaPS90iKIqSvi@infradead.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lts6w-0002dr-DL
Subject: Re: [V9fs-developer] [PATCH v2 0/2] Add support to boot virtiofs
 and 9pfs as rootfs
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
Cc: dhowells@redhat.com, miklos@szeredi.hu, richard.weinberger@gmail.com,
 dgilbert@redhat.com, linux-kernel@vger.kernel.org, virtio-fs@redhat.com,
 viro@zeniv.linux.org.uk, stefanha@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jun 17, 2021 at 11:14:00AM +0100, Christoph Hellwig wrote:
> Why not something like the version below that should work for all nodev
> file systems?

Hi Christoph,

Thanks for this patch. It definitely looks much better. I had a fear
of breaking something if I were to go through this path of using
FS_REQUIRES_DEV.

This patch works for me with "root=myfs rootfstype=virtiofs rw". Have
few thoughts inline.
> 
> diff --git a/init/do_mounts.c b/init/do_mounts.c
> index 74aede860de7..3c5676603fef 100644
> --- a/init/do_mounts.c
> +++ b/init/do_mounts.c
> @@ -530,6 +530,39 @@ static int __init mount_cifs_root(void)
>  }
>  #endif
>  
> +static int __init mount_nodev_root(void)
> +{
> +	struct file_system_type *fs = get_fs_type(root_fs_names);

get_fs_type() assumes root_fs_names is not null. So if I pass
"root=myfs rw", it crashes with null pointer dereference.


> +	char *fs_names, *p;
> +	int err = -ENODEV;
> +
> +	if (!fs)
> +		goto out;
> +	if (fs->fs_flags & FS_REQUIRES_DEV)
> +		goto out_put_filesystem;
> +
> +	fs_names = (void *)__get_free_page(GFP_KERNEL);
> +	if (!fs_names)
> +		goto out_put_filesystem;
> +	get_fs_names(fs_names);

I am wondering what use case we are trying to address by calling
get_fs_names() and trying do_mount_root() on all filesystems
returned by get_fs_names(). I am assuming following use cases
you have in mind.

A. User passes a single filesystem in rootfstype.
   
   root=myfs rootfstype=virtiofs rw

B. User passes multiple filesystems in rootfstype and kernel tries all
   of them one after the other

   root=myfs, rootfstype=9p,virtiofs rw

C. User does not pass a filesystem type at all. And kernel will get a
   list of in-built filesystems and will try these one after the other.

   root=myfs rw

If that's the thought, will it make sense to call get_fs_names() first
and then inside the for loop call get_fs_type() and try mounting
only if FS_REQUIRES_DEV is not set, otherwise skip and move onto th
next filesystem in the list (fs_names).

Thanks
Vivek

> +
> +	for (p = fs_names; *p; p += strlen(p) + 1) {
> +		err = do_mount_root(root_device_name, p, root_mountflags,
> +					root_mount_data);
> +		if (!err)
> +			break;
> +		if (err != -EACCES && err != -EINVAL)
> +			panic("VFS: Unable to mount root \"%s\" (%s), err=%d\n",
> +				      root_device_name, p, err);
> +	}
> +
> +	free_page((unsigned long)fs_names);
> +out_put_filesystem:
> +	put_filesystem(fs);
> +out:
> +	return err;
> +}
> +
>  void __init mount_root(void)
>  {
>  #ifdef CONFIG_ROOT_NFS
> @@ -546,6 +579,8 @@ void __init mount_root(void)
>  		return;
>  	}
>  #endif
> +	if (ROOT_DEV == 0 && mount_nodev_root() == 0)
> +		return;
>  #ifdef CONFIG_BLOCK
>  	{
>  		int err = create_dev("/dev/root", ROOT_DEV);
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
