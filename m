Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F3C6CBF4
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jul 2019 11:31:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ho2lL-0002MQ-05; Thu, 18 Jul 2019 09:31:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matthieu.baerts@tessares.net>) id 1ho2lI-0002MI-UQ
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 09:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nCQ51sACEIRuZqZdzmQ9v4P5jhtd39KV95DbfriQE00=; b=aQS1hmvdOiNff5qF3W2C9FYwIT
 yFNG4LB4OCqHcgY9N649oIH6wAnbqIJ+wWWwGbgdx79gy9LUxKxivozdCuGhQfVUS+G7FoFmXg3UK
 MEBt9Rxchpaja2ZRdh2LiChCKvj5ymJl4AFdJ4ZSbOwx55agbsqiJCPNDHicJR9qI9os=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nCQ51sACEIRuZqZdzmQ9v4P5jhtd39KV95DbfriQE00=; b=inveck8mHY6YYjNCmZvbuQFNAC
 3gkUE7Wd7j3Sml+vnCuqc+UoBW7kQfF7DFR+rd3ATBElbniL/wgq7gLNAxxKNTWaov60frwf6N6+l
 JR5pvQ7Zr+7ugN+RY+dMSQ0mVddafFw71QWdiK1BYLyuPakX8SDuHE0qktA0TMTeUj0A=;
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1ho2lF-005apC-A3
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 09:31:40 +0000
Received: by mail-ed1-f67.google.com with SMTP id e3so29589008edr.10
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 18 Jul 2019 02:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nCQ51sACEIRuZqZdzmQ9v4P5jhtd39KV95DbfriQE00=;
 b=cTyPY8dvT4BJtMPsWtpQUUmn/6wf0j2SMY7Lh7smwPQ28wKPZGWGF4gKMNcXzYDpES
 IYUU1C8u60M0zG29YOci0/2EcAUqbMg1Dq/+vFao8vSMY8NRj2Z/sYF7DGWjOwfhgcQn
 AcjVvsKoyyFkdJnTSZJ/6h7VA9TWLziH7jn01fub8+21CN3HZ3/CnIuJZu41dHosUIfV
 e5BG4BxJ4XFJItmoLtF7xqk7L2aiEqt0TlJ2ZUffK9iYuq/U0FiK1GEFT9cTv7pah/rg
 y2BSqXLtdH/OyNbiaXu6HFn83BUIASVpfmEILQqKnK1ij8p4ffPKwO18AcFT9ClYyEaA
 jv1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=nCQ51sACEIRuZqZdzmQ9v4P5jhtd39KV95DbfriQE00=;
 b=qXCQHdyvtGsP3/P9n/GhEyPCJmG2d81PxEF6jbE5+cPRGTfuBKkfGICaoQNITOlBFb
 5XnZKilyR7bs5oErqaSVOYcT+eWYDQDIRvgkmetWC89S29R0NhT2XJcdzAT+mG3eCore
 Z6CqqbvO9GEvaxs9r8MYzN5N3tIwablR6MdmEWa0RLdoBeKwQgKSEGp8ud49nGzOoPTA
 Olc8E3/oaoqPm6Jhz4fsjGDNQ13aGFxJ8bJKT4MVn7E3S/tQIfMgAHGRK8WoLoft/RwY
 NrV1tVWqE5LmG5/gqG9ybh16sEAZ/t1ZlJ9WaMl97dMTAImWfkSyAchKy1T5fl5A+GqI
 J+kA==
X-Gm-Message-State: APjAAAXVVAPNhlj6YfBngyjdWs6Akjt8AbVGmkQNr4FGSf87y6KbRfHw
 oILY1ouqbGBwwpoZdyppTA4YgQ==
X-Google-Smtp-Source: APXvYqwf6uUtF+JBr/dHmfkOACkvinCOxmw4aUsRKySgEhFNBSugXgqwlnWPFnJMV6OVv1EQGIvoyA==
X-Received: by 2002:a50:9999:: with SMTP id m25mr39911405edb.183.1563442290532; 
 Thu, 18 Jul 2019 02:31:30 -0700 (PDT)
Received: from tsr-lap-08.nix.tessares.net ([213.211.153.55])
 by smtp.gmail.com with ESMTPSA id a6sm7313015eds.19.2019.07.18.02.31.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 02:31:29 -0700 (PDT)
To: Dominique Martinet <asmadeus@codewreck.org>
References: <0757f061-0685-6e8e-9e6f-035d0f57eaf8@tessares.net>
 <20190715113251.GA28601@nautica>
 <f6513948-312e-2edb-44e7-40217741e9ba@tessares.net>
 <20190715161501.GA6535@nautica>
 <2dfd3bab-f7ce-56ef-9e39-eb774781272e@tessares.net>
 <20190717204349.GA14632@nautica>
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Openpgp: preference=signencrypt
Autocrypt: addr=matthieu.baerts@tessares.net; keydata=
 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
 fQpO7wDE/Q==
Message-ID: <294f9793-94f9-a3ec-97ab-a691d27736c3@tessares.net>
Date: Thu, 18 Jul 2019 11:31:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190717204349.GA14632@nautica>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.67 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: vm_init.sh]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ho2lF-005apC-A3
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Dominique,

Thank you for your answer!

On 17/07/2019 22:43, Dominique Martinet wrote:
> Matthieu Baerts wrote on Wed, Jul 17, 2019:
>>> The only one that might be related is "9p: p9dirent_read: check
>>> network-provided name length" ; but even that likely shouldn't kick in.
>>
>> Two days ago, I only had the time to launch a kind of 'git bisect' to
>> find which of the new 9p patches caused the issue. It seems you were
>> right, without this "9p: p9dirent_read: check network-provided name
>> length" patch, I no longer have the KASAN warning on this v4.14 kernel.
> 
> I still have no idea how the two relate but that's a good start...
> 
>>> You can check if it was implied by adding debug=1 to your 9p mount
>>> options, assuming it is compiled with debugs (I still plan on making
>>> that the default eventually as debug=1 only enables *error* messages)
>>
>> I will check how to enable these debugs (is it a kernel option or you
>> want the output of pr_debug?) and report the logs here.
> 
> You basically just need to check if CONFIG_NET_9P_DEBUG is set in your
> kernel config and add 'debug=1' to your mount command line options, that
> should probably print something before the kasan error (like
> p9dirent_read failing, as without the patch it could not return an
> error) - the pr_debug messages will go to dmesg.

I might have done something wrong because I don't see any debug
information printed in dmesg, at least not more than before:



(...)
[   16.167196] random: crng init done

[   33.538893] 8021q: adding VLAN 0 to HW filter on device eth0

[   34.556519] 8021q: adding VLAN 0 to HW filter on device eth1

[   34.715921] 8021q: adding VLAN 0 to HW filter on device eth2
[   64.421015]
==================================================================
[   64.421063] BUG: KASAN: slab-out-of-bounds in strscpy+0x49d/0x590
[   64.421063] Read of size 8 at addr ffff8880342512a8 by task confd/274

[   64.421063]



[   64.421063] CPU: 0 PID: 274 Comm: confd Not tainted 4.14.133-mptcp+
#42


[   64.421063] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 0.5.1 01/01/2011


[   64.421063] Call Trace:



[   64.421063]  dump_stack+0xa6/0x12e
[   64.421063]  ? _atomic_dec_and_lock+0x1b2/0x1b2

[   64.421063]  ? radix_tree_lookup+0x10/0x10
[   64.421063]  ? strscpy+0x49d/0x590


                                      [57/54463]
[   64.421063]  print_address_description+0xa1/0x330

[   64.421063]  ? strscpy+0x49d/0x590

[   64.421063]  kasan_report+0x23f/0x350

[   64.421063]  strscpy+0x49d/0x590
[   64.421063]  ? strncpy+0xd0/0xd0
[   64.421063]  p9dirent_read+0x28b/0x540
[   64.421063]  ? unwind_next_frame+0xc97/0x1eb0
[   64.421063]  ? p9stat_read+0x460/0x460
[   64.421063]  ? entry_SYSCALL_64_after_hwframe+0x3d/0xa2
[   64.421063]  ? rcutorture_record_progress+0x10/0x10
[   64.421063]  ? v9fs_unregister_trans+0x240/0x240
[   64.421063]  ? kernel_text_address+0x111/0x120
[   64.421063]  ? __kernel_text_address+0xe/0x30
[   64.421063]  v9fs_dir_readdir_dotl+0x34f/0x5d0
[   64.421063]  ? kasan_slab_free+0x12d/0x1a0
[   64.421063]  ? v9fs_dir_readdir+0x840/0x840
[   64.421063]  ? iterate_fd+0x300/0x300
[   64.421063]  ? do_filp_open+0x24a/0x3b0
[   64.421063]  ? SyS_getcwd+0x3b7/0x9f0
[   64.421063]  ? may_open_dev+0xc0/0xc0
[   64.421063]  ? get_unused_fd_flags+0x180/0x180
[   64.421063]  ? __up.isra.0+0x230/0x230
[   64.421063]  ? __fdget_pos+0x105/0x170
[   64.421063]  ? iterate_dir+0x171/0x5b0
[   64.421063]  iterate_dir+0x171/0x5b0
[   64.421063]  SyS_getdents+0x1dc/0x3a0
[   64.421063]  ? SyS_old_readdir+0x200/0x200
[   64.421063]  ? SyS_write+0x1c0/0x270
[   64.421063]  ? fillonedir+0x1a0/0x1a0
[   64.421063]  ? SyS_old_readdir+0x200/0x200
[   64.421063]  ? do_syscall_64+0x259/0xa90
[   64.421063]  do_syscall_64+0x259/0xa90

[   64.421063]  ? syscall_return_slowpath+0x340/0x340
[   64.421063]  ? do_page_fault+0x11f/0x400

[   64.421063]  ? __do_page_fault+0xe00/0xe00

[   64.421063]  ? __hrtick_start+0x2f0/0x2f0
[   64.421063]  ? __switch_to_asm+0x31/0x60
[   64.421063]  ? __switch_to_asm+0x31/0x60
[   64.421063]  ? __switch_to_asm+0x25/0x60

[   64.421063]  ? __switch_to_asm+0x31/0x60

[   64.421063]  ? __switch_to_asm+0x31/0x60

[   64.421063]  ? __switch_to_asm+0x31/0x60
[   64.421063]  ? __switch_to_asm+0x25/0x60

[   64.421063]  ? __switch_to_asm+0x31/0x60

[   64.421063]  ? __switch_to_asm+0x31/0x60

[   64.421063]  ? __switch_to_asm+0x31/0x60
[   64.421063]  ? __switch_to_asm+0x31/0x60
[   64.421063]  ? __switch_to_asm+0x31/0x60
[   64.421063]  ? __switch_to_asm+0x25/0x60

[   64.421063]  ? __switch_to_asm+0x31/0x60



[   64.421063]  ? __switch_to_asm+0x31/0x60



[   64.421063]  ? __switch_to_asm+0x31/0x60



[   64.421063]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2



[   64.421063] RIP: 0033:0x7f544c6469d5
[   64.421063] RSP: 002b:00007f544d4f4d60 EFLAGS: 00000246 ORIG_RAX:
000000000000004e
[   64.421063] RAX: ffffffffffffffda RBX: 00007f543400a910 RCX:
00007f544c6469d5
[   64.421063] RDX: 0000000000008000 RSI: 00007f543400a910 RDI:
000000000000002c

                                               [0/54463]
[   64.421063] RBP: 00007f543400a910 R08: 00007f544d4f4e10 R09:
0000000000008030
[   64.421063] R10: 0000000000000076 R11: 0000000000000246 R12:
ffffffffffffff70
[   64.421063] R13: 0000000000000002 R14: 00007f54340008d0 R15:
00000000012a8774
[   64.421063]
[   64.421063] Allocated by task 274:
[   64.421063]  kasan_kmalloc+0xe4/0x170
[   64.421063]  __kmalloc+0xdd/0x1c0
[   64.421063]  p9pdu_readf+0xbb8/0x2940
[   64.421063]  p9dirent_read+0x174/0x540
[   64.421063]  v9fs_dir_readdir_dotl+0x34f/0x5d0
[   64.421063]  iterate_dir+0x171/0x5b0
[   64.421063]  SyS_getdents+0x1dc/0x3a0
[   64.421063]  do_syscall_64+0x259/0xa90
[   64.421063]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
[   64.421063]
[   64.421063] Freed by task 266:
[   64.421063]  kasan_slab_free+0xac/0x1a0
[   64.421063]  kfree+0xcd/0x1e0
[   64.421063]  p9stat_free+0x156/0x200
[   64.421063]  v9fs_vfs_getattr+0x179/0x230
[   64.421063]  ovl_getattr+0x133/0x7b0
[   64.421063]  vfs_statx+0xc6/0x120
[   64.421063]  SyS_newstat+0x70/0xc0
[   64.421063]  do_syscall_64+0x259/0xa90
[   64.421063]  entry_SYSCALL_64_after_hwframe+0x3d/0xa2
[   64.421063]
[   64.421063] The buggy address belongs to the object at ffff8880342512a0
[   64.421063]  which belongs to the cache kmalloc-16 of size 16
[   64.421063] The buggy address is located 8 bytes inside of
[   64.421063]  16-byte region [ffff8880342512a0, ffff8880342512b0)
[   64.421063] The buggy address belongs to the page:
[   64.421063] page:ffff88803f500440 count:1 mapcount:0 mapping:
  (null) index:0x0
[   64.421063] flags: 0xc80000000100(slab)
[   64.421063] raw: 0000c80000000100 0000000000000000 0000000000000000
0000000180800080
[   64.421063] raw: ffff88803f5293c0 0000000900000009 ffff888035c01b40
0000000000000000
[   64.421063] page dumped because: kasan: bad access detected
[   64.421063]
[   64.421063] Memory state around the buggy address:
[   64.421063]  ffff888034251180: fb fb fc fc fb fb fc fc fb fb fc fc fb
fb fc fc
[   64.421063]  ffff888034251200: fb fb fc fc fb fb fc fc fb fb fc fc fb
fb fc fc
[   64.421063] >ffff888034251280: fb fb fc fc 00 02 fc fc fb fb fc fc fb
fb fc fc
[   64.421063]                                   ^
[   64.421063]  ffff888034251300: fb fb fc fc fb fb fc fc fb fb fc fc fb
fb fc fc
[   64.421063]  ffff888034251380: fb fb fc fc fb fb fc fc fb fb fc fc fb
fb fc fc
[   64.421063]
==================================================================
[   64.421063] Disabling lock debugging due to kernel taint
[  202.187201] ACPI: Preparing to enter system sleep state S5
[  202.195568] reboot: Power down
(...)



The only other messages related to 9P are:

[    0.000000] Kernel command line: init=tests/framework/vm_init.sh
console=ttyS0 root=/dev/root rootflags=trans=virtio,version=9p2000.u ro
rootfstype=9p panic=-1
[    0.860614] 9p: Installing v9fs 9p2000 file system support
[    1.842537] 9pnet: Installing 9P2000 support
[    2.403295] VFS: Mounted root (9p filesystem) readonly on device 0:14.

Note that I forgot 9p was also used for the root FS in RO.

I added the debug flag in rootflags:

    rootflags=trans=virtio,version=9p2000.u,debug=1

But the result is the same, no debug messages.


Here are the modifications I did related to the mount command:


-mount -t 9p outshare  "${MOUNT_DIR}/overlay/out" -o
trans=virtio,version=9p2000.L,access=0,rw
+mount -t 9p outshare  "${MOUNT_DIR}/overlay/out" -o
trans=virtio,version=9p2000.L,access=0,rw,debug=1


and related to my kernel config:


@@ -1162,7 +1163,7 @@ CONFIG_FIB_RULES=y
 # CONFIG_RFKILL is not set
 CONFIG_NET_9P=y
 CONFIG_NET_9P_VIRTIO=y
-# CONFIG_NET_9P_DEBUG is not set
+CONFIG_NET_9P_DEBUG=y
 # CONFIG_CAIF is not set
 # CONFIG_CEPH_LIB is not set
 # CONFIG_NFC is not set


> If you can it might help to change the error message after p9pdu_readf
> to P9_DEBUG_ERROR as well in case that is the one; it would be possible
> to print P9_DEBUG_9P messages by setting the bit but it might be too
> verbose to reproduce, it's probably better to raise the message to error
> here.
> 
> ---
> diff --git a/net/9p/protocol.c b/net/9p/protocol.c
> index 462ba144cb39..0bc19088a53b 100644
> --- a/net/9p/protocol.c
> +++ b/net/9p/protocol.c
> @@ -621,7 +621,8 @@ int p9dirent_read(struct p9_client *clnt, char *buf, int len,
>  	ret = p9pdu_readf(&fake_pdu, clnt->proto_version, "Qqbs", &dirent->qid,
>  			  &dirent->d_off, &dirent->d_type, &nameptr);
>  	if (ret) {
> -		p9_debug(P9_DEBUG_9P, "<<< p9dirent_read failed: %d\n", ret);
> +		p9_debug(P9_DEBUG_ERROR, "<<< p9dirent_read failed: %d\n",
> +			 ret);
>  		trace_9p_protocol_dump(clnt, &fake_pdu);
>  		return ret;
>  	}
> ---

I can sure do that but before, when you say:

> the pr_debug messages will go to dmesg.

Are they really "pr_debug" message? Just to know if I need to do
something special at the compilation time.

>> Of course, I understand. For the moment, this confd process is more like
>> a blackbox to me but I will try to get more details! I just hope I will
>> not have to use strace :)
> 
> Let's see what the error messages have to say first, there might be an
> interesting hint there.

Excellent!

> It might be faster for me to give you a few printks to add than to
> actually find a concise reproducer if you're willing to bear with me...

I should be able to bear with you... World Cup (Soccer) was last year, I
think Belgian guys can now work with French guys :-D

Thank you for the support!

Cheers,
Matt
-- 
Matthieu Baerts | R&D Engineer
matthieu.baerts@tessares.net
Tessares SA | Hybrid Access Solutions
www.tessares.net
1 Avenue Jean Monnet, 1348 Louvain-la-Neuve, Belgium


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
