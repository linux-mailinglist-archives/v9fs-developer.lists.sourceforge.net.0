Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 706605BC262
	for <lists+v9fs-developer@lfdr.de>; Mon, 19 Sep 2022 06:54:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oa8nu-0003e3-BC;
	Mon, 19 Sep 2022 04:54:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3C_YnYwkbALYouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oa8ns-0003do-Tc for v9fs-developer@lists.sourceforge.net;
 Mon, 19 Sep 2022 04:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:From:
 Subject:Message-ID:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cFauf4yP9Y+7kIkrAYjg64CBqQa89jBPQijKo3j3WWo=; b=bzCmJWfuqNtVEDlZ8uC+58dEV1
 Mf0XBirV2aiLhd7870Z7PrXyRwuUP9vgbRNs/jIYsiFWzoN462j2mtJVpyUQBS1B5ZzbIlSVh2/WI
 wyYCKItvztl8mMIt/nZztQ0GA1y+gmzlo5RjFUr1f8XsxigT2Qn7YntrinvwGFmgo2bs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cFauf4yP9Y+7kIkrAYjg64CBqQa89jBPQijKo3j3WWo=; b=J
 CFzThQdvDAmgUY6biqdReY+2SAD4OSDVpeykjkcKxMX4Xi0FgzwxSADMQJ9FotoyylO3soQ36jHCK
 M60MxC8NOHJ5z5Neh16S16fcy3wzf1rJYuvxlxFKnkFSzbP32WDwiWlvTx0qR4cgJBn7JvkeQ2oqn
 7x17N96BOoL1qFjQ=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oa8no-00Cvhu-Q4 for v9fs-developer@lists.sourceforge.net;
 Mon, 19 Sep 2022 04:54:44 +0000
Received: by mail-il1-f198.google.com with SMTP id
 z9-20020a921a49000000b002f0f7fb57e3so18572412ill.2
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 18 Sep 2022 21:54:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:from:subject:message-id:date
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=cFauf4yP9Y+7kIkrAYjg64CBqQa89jBPQijKo3j3WWo=;
 b=vJRH90h+F+tYZWN6IuNhlfn8b4dJGIzOSQdkGJauyBITi6WCQohjJVX40a8kU7kHiJ
 ycIlh/L1uufxe2F0RX+s1c3qFDXAu1X71MuhqZ4PSDllI8qu7CstjGdbdJmC+Lm7Y/jS
 IJxCvjv5HJEbB8TMZt2WjR4LQa27bTBCwL5E2wBiorad8lNFEBgD0599Ld9Ztehck2WK
 e8/3q79bVXowHgp/IQsPaGQ7ZdHyh5XhSv79eaoyKrej78JZa/nveby9nZ0m1GRxq/J6
 7HIzD8xIYO9EnunA7BXh9axjReljTKN2cKPy2mled+RJ8rf35V2J2bQxWiFMtZTK1zgM
 MT0A==
X-Gm-Message-State: ACrzQf2jUqGaoSLJSp+IN6o8uRvYZGIzBsKh7A6i9PNdW82QYTSkX+3g
 cO0xaKg/B7M/hSWE0CN2biiabmlz7PDuHmrLshru6B4w1osX
X-Google-Smtp-Source: AMsMyM5+Wg39U35ym7vG4ptPnS6gQbFNWoydFNYYWb19c8ZwsOmwbSFyYqp4uMckaSy1hnIbahyvYqYyz4BjpDqf8XcVu8YQRFT8
MIME-Version: 1.0
X-Received: by 2002:a92:6a0d:0:b0:2e5:afe7:8d95 with SMTP id
 f13-20020a926a0d000000b002e5afe78d95mr6882087ilc.262.1663563275238; Sun, 18
 Sep 2022 21:54:35 -0700 (PDT)
Date: Sun, 18 Sep 2022 21:54:35 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001506a805e90082ea@google.com>
From: syzbot <syzbot+3ba8f2097df93bc26d2f@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, davem@davemloft.net, edumazet@google.com, 
 ericvh@gmail.com, kuba@kernel.org, linux-kernel@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, netdev@vger.kernel.org, 
 pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 80e78fcce86d
 Linux 6.0-rc5 git tree: upstream console output:
 https://syzkaller.appspot.com/x/log.txt?x=10397700880000
 kernel config: https://syzkaller.appspot.com/x/.config?x=d4cc03e6a78 [...]
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
X-Headers-End: 1oa8no-00Cvhu-Q4
Subject: [V9fs-developer] [syzbot] WARNING: refcount bug in p9_req_put (2)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8sCgpzeXpib3QgZm91bmQgdGhlIGZvbGxvd2luZyBpc3N1ZSBvbjoKCkhFQUQgY29tbWl0
OiAgICA4MGU3OGZjY2U4NmQgTGludXggNi4wLXJjNQpnaXQgdHJlZTogICAgICAgdXBzdHJlYW0K
Y29uc29sZSBvdXRwdXQ6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvbG9nLnR4dD94
PTEwMzk3NzAwODgwMDAwCmtlcm5lbCBjb25maWc6ICBodHRwczovL3N5emthbGxlci5hcHBzcG90
LmNvbS94Ly5jb25maWc/eD1kNGNjMDNlNmE3OGFmMjZkCmRhc2hib2FyZCBsaW5rOiBodHRwczov
L3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9M2JhOGYyMDk3ZGY5M2JjMjZkMmYKY29t
cGlsZXI6ICAgICAgIGdjYyAoRGViaWFuIDEwLjIuMS02KSAxMC4yLjEgMjAyMTAxMTAsIEdOVSBs
ZCAoR05VIEJpbnV0aWxzIGZvciBEZWJpYW4pIDIuMzUuMgoKVW5mb3J0dW5hdGVseSwgSSBkb24n
dCBoYXZlIGFueSByZXByb2R1Y2VyIGZvciB0aGlzIGlzc3VlIHlldC4KCklNUE9SVEFOVDogaWYg
eW91IGZpeCB0aGUgaXNzdWUsIHBsZWFzZSBhZGQgdGhlIGZvbGxvd2luZyB0YWcgdG8gdGhlIGNv
bW1pdDoKUmVwb3J0ZWQtYnk6IHN5emJvdCszYmE4ZjIwOTdkZjkzYmMyNmQyZkBzeXprYWxsZXIu
YXBwc3BvdG1haWwuY29tCgo5cDogVW5rbm93biBDYWNoZSBtb2RlIGbvv73vv70qdXjvv70WbEnv
v73vv71jYWNoZQo5cG5ldDogVGFnIDY1NTM1IHN0aWxsIGluIHVzZQotLS0tLS0tLS0tLS1bIGN1
dCBoZXJlIF0tLS0tLS0tLS0tLS0KcmVmY291bnRfdDogdW5kZXJmbG93OyB1c2UtYWZ0ZXItZnJl
ZS4KV0FSTklORzogQ1BVOiAxIFBJRDogMTE2NjggYXQgbGliL3JlZmNvdW50LmM6MjggcmVmY291
bnRfd2Fybl9zYXR1cmF0ZSsweDFkMS8weDFlMCBsaWIvcmVmY291bnQuYzoyOApNb2R1bGVzIGxp
bmtlZCBpbjoKQ1BVOiAxIFBJRDogMTE2NjggQ29tbTogc3l6LWV4ZWN1dG9yLjMgTm90IHRhaW50
ZWQgNi4wLjAtcmM1LXN5emthbGxlciAjMApIYXJkd2FyZSBuYW1lOiBRRU1VIFN0YW5kYXJkIFBD
IChRMzUgKyBJQ0g5LCAyMDA5KSwgQklPUyAxLjE0LjAtMiAwNC8wMS8yMDE0ClJJUDogMDAxMDpy
ZWZjb3VudF93YXJuX3NhdHVyYXRlKzB4MWQxLzB4MWUwIGxpYi9yZWZjb3VudC5jOjI4CkNvZGU6
IGU5IGRiIGZlIGZmIGZmIDQ4IDg5IGRmIGU4IDFjIGE2IGM5IGZkIGU5IDhhIGZlIGZmIGZmIGU4
IDYyIDA3IDdlIGZkIDQ4IGM3IGM3IGUwIGEwIDQ4IDhhIGM2IDA1IDgxIGY3IGNiIDA5IDAxIGU4
IDQxIDM2IDNkIDA1IDwwZj4gMGIgZTkgYWYgZmUgZmYgZmYgMGYgMWYgODQgMDAgMDAgMDAgMDAg
MDAgNDEgNTYgNDEgNTUgNDEgNTQgNTUKUlNQOiAwMDE4OmZmZmZjOTAwMDZiZmY5ZjAgRUZMQUdT
OiAwMDAxMDI4MgpSQVg6IDAwMDAwMDAwMDAwMDAwMDAgUkJYOiAwMDAwMDAwMDAwMDAwMDAwIFJD
WDogMDAwMDAwMDAwMDAwMDAwMApSRFg6IDAwMDAwMDAwMDAwNDAwMDAgUlNJOiBmZmZmZmZmZjgx
NjExZTA4IFJESTogZmZmZmY1MjAwMGQ3ZmYzMApSQlA6IDAwMDAwMDAwMDAwMDAwMDMgUjA4OiAw
MDAwMDAwMDAwMDAwMDA1IFIwOTogMDAwMDAwMDAwMDAwMDAwMApSMTA6IDAwMDAwMDAwODAwMDAw
MDAgUjExOiAwMDAwMDAwMDAwMDAwMDAxIFIxMjogMDAwMDAwMDAwMDAwMDAwMApSMTM6IGZmZmY4
ODgwNzA2YTQ4MDggUjE0OiBmZmZmODg4MDI1ODM4NDAwIFIxNTogZGZmZmZjMDAwMDAwMDAwMApG
UzogIDAwMDA3ZjI0OTZmZmU3MDAoMDAwMCkgR1M6ZmZmZjg4ODAyYzkwMDAwMCgwMDAwKSBrbmxH
UzowMDAwMDAwMDAwMDAwMDAwCkNTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAw
MDAwODAwNTAwMzMKQ1IyOiAwMDAwMDAwMDIwMDAzMDAwIENSMzogMDAwMDAwMDA2ZjM4YjAwMCBD
UjQ6IDAwMDAwMDAwMDAxNTBlZTAKRFIwOiAwMDAwMDAwMDAwMDAwMDAwIERSMTogMDAwMDAwMDAw
MDAwMDAwMCBEUjI6IDAwMDAwMDAwMDAwMDAwMDAKRFIzOiAwMDAwMDAwMDAwMDAwMDAwIERSNjog
MDAwMDAwMDBmZmZlMGZmMCBEUjc6IDAwMDAwMDAwMDAwMDA0MDAKQ2FsbCBUcmFjZToKIDxUQVNL
PgogX19yZWZjb3VudF9zdWJfYW5kX3Rlc3QgaW5jbHVkZS9saW51eC9yZWZjb3VudC5oOjI4MyBb
aW5saW5lXQogX19yZWZjb3VudF9kZWNfYW5kX3Rlc3QgaW5jbHVkZS9saW51eC9yZWZjb3VudC5o
OjMxNSBbaW5saW5lXQogcmVmY291bnRfZGVjX2FuZF90ZXN0IGluY2x1ZGUvbGludXgvcmVmY291
bnQuaDozMzMgW2lubGluZV0KIHA5X3JlcV9wdXQrMHgxZjIvMHgyNTAgbmV0LzlwL2NsaWVudC5j
OjM3NAogcDlfdGFnX2NsZWFudXAgbmV0LzlwL2NsaWVudC5jOjQwMSBbaW5saW5lXQogcDlfY2xp
ZW50X2Rlc3Ryb3kuY29sZCsweDIwLzB4Y2MgbmV0LzlwL2NsaWVudC5jOjEwMjcKIHY5ZnNfc2Vz
c2lvbl9pbml0KzB4MTAwMy8weDE4MTAgZnMvOXAvdjlmcy5jOjQ4OAogdjlmc19tb3VudCsweGJh
LzB4YzkwIGZzLzlwL3Zmc19zdXBlci5jOjEyNgogbGVnYWN5X2dldF90cmVlKzB4MTA1LzB4MjIw
IGZzL2ZzX2NvbnRleHQuYzo2MTAKIHZmc19nZXRfdHJlZSsweDg5LzB4MmYwIGZzL3N1cGVyLmM6
MTUzMAogZG9fbmV3X21vdW50IGZzL25hbWVzcGFjZS5jOjMwNDAgW2lubGluZV0KIHBhdGhfbW91
bnQrMHgxMzI2LzB4MWUyMCBmcy9uYW1lc3BhY2UuYzozMzcwCiBkb19tb3VudCBmcy9uYW1lc3Bh
Y2UuYzozMzgzIFtpbmxpbmVdCiBfX2RvX3N5c19tb3VudCBmcy9uYW1lc3BhY2UuYzozNTkxIFtp
bmxpbmVdCiBfX3NlX3N5c19tb3VudCBmcy9uYW1lc3BhY2UuYzozNTY4IFtpbmxpbmVdCiBfX3g2
NF9zeXNfbW91bnQrMHgyN2YvMHgzMDAgZnMvbmFtZXNwYWNlLmM6MzU2OAogZG9fc3lzY2FsbF94
NjQgYXJjaC94ODYvZW50cnkvY29tbW9uLmM6NTAgW2lubGluZV0KIGRvX3N5c2NhbGxfNjQrMHgz
NS8weGIwIGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjgwCiBlbnRyeV9TWVNDQUxMXzY0X2FmdGVy
X2h3ZnJhbWUrMHg2My8weGNkClJJUDogMDAzMzoweDdmMjQ5ODA4OTNjOQpDb2RlOiBmZiBmZiBj
MyA2NiAyZSAwZiAxZiA4NCAwMCAwMCAwMCAwMCAwMCAwZiAxZiA0MCAwMCA0OCA4OSBmOCA0OCA4
OSBmNyA0OCA4OSBkNiA0OCA4OSBjYSA0ZCA4OSBjMiA0ZCA4OSBjOCA0YyA4YiA0YyAyNCAwOCAw
ZiAwNSA8NDg+IDNkIDAxIGYwIGZmIGZmIDczIDAxIGMzIDQ4IGM3IGMxIGI4IGZmIGZmIGZmIGY3
IGQ4IDY0IDg5IDAxIDQ4ClJTUDogMDAyYjowMDAwN2YyNDk2ZmZlMTY4IEVGTEFHUzogMDAwMDAy
NDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwYTUKUkFYOiBmZmZmZmZmZmZmZmZmZmRhIFJCWDog
MDAwMDdmMjQ5ODE5YzA1MCBSQ1g6IDAwMDA3ZjI0OTgwODkzYzkKUkRYOiAwMDAwMDAwMDIwMDAw
NTgwIFJTSTogMDAwMDAwMDAyMDAwMDU0MCBSREk6IDAwMDAwMDAwMjAwMDAyNDAKUkJQOiAwMDAw
N2YyNDk4MGU0MzNmIFIwODogMDAwMDAwMDAyMDAwMDY0MCBSMDk6IDAwMDAwMDAwMDAwMDAwMDAK
UjEwOiAwMDAwMDAwMDAwMDA0MDAwIFIxMTogMDAwMDAwMDAwMDAwMDI0NiBSMTI6IDAwMDAwMDAw
MDAwMDAwMDAKUjEzOiAwMDAwN2ZmY2Y3ZDdkM2RmIFIxNDogMDAwMDdmMjQ5NmZmZTMwMCBSMTU6
IDAwMDAwMDAwMDAwMjIwMDAKIDwvVEFTSz4KCgotLS0KVGhpcyByZXBvcnQgaXMgZ2VuZXJhdGVk
IGJ5IGEgYm90LiBJdCBtYXkgY29udGFpbiBlcnJvcnMuClNlZSBodHRwczovL2dvby5nbC90cHNt
RUogZm9yIG1vcmUgaW5mb3JtYXRpb24gYWJvdXQgc3l6Ym90LgpzeXpib3QgZW5naW5lZXJzIGNh
biBiZSByZWFjaGVkIGF0IHN5emthbGxlckBnb29nbGVncm91cHMuY29tLgoKc3l6Ym90IHdpbGwg
a2VlcCB0cmFjayBvZiB0aGlzIGlzc3VlLiBTZWU6Cmh0dHBzOi8vZ29vLmdsL3Rwc21FSiNzdGF0
dXMgZm9yIGhvdyB0byBjb21tdW5pY2F0ZSB3aXRoIHN5emJvdC4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
