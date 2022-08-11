Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1462658F7F3
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Aug 2022 08:52:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oM23B-0003Go-1K; Thu, 11 Aug 2022 06:52:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <penguin-kernel@I-love.SAKURA.ne.jp>)
 id 1oM238-0003Gd-H8
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Aug 2022 06:52:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Cc:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hlMXMHb3Ek7nz4m6GrrGqfjuCNrM1ObCuu1qKDWJDng=; b=XEgKAXklbOr6yO2ijcyx8LoDjr
 udkb2V4nZqN5SxEqUhgNDBI6nqcXsDfveau7RgRsygQa0DGbXy6J3yRgJGB2LYinCtAaiYQZW0LoI
 j69g6PaFRhpazBxEyOpn/abDbsKKyv3tz2p+GoTY7/HU0Wb9gFDj2QDKvXUavD+iQ3s0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Cc:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hlMXMHb3Ek7nz4m6GrrGqfjuCNrM1ObCuu1qKDWJDng=; b=k7vvfD8HgoS12AST/gsvi0Xr+K
 vLe244Qyu0Uqdxd2WdC/htuC2w1GyDQWILCn63FVD3ssEAJa7rGlUbWNnqC3vgbtTdmBh7+GdW22i
 g2mPj5vlWFGzMsbhc5Y7AReSTuS/5bLOuWlPZae5AP6nNJf7KuvOKUhtxtn+4K7KaA1s=;
Received: from www262.sakura.ne.jp ([202.181.97.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oM235-00BMCq-4I
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Aug 2022 06:52:11 +0000
Received: from fsav117.sakura.ne.jp (fsav117.sakura.ne.jp [27.133.134.244])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 27B61Nmu069124;
 Thu, 11 Aug 2022 15:01:23 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav117.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav117.sakura.ne.jp);
 Thu, 11 Aug 2022 15:01:23 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav117.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 27B61NJB069121
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 11 Aug 2022 15:01:23 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <f00146b5-0a14-ac24-3d7b-3d4deeb96359@I-love.SAKURA.ne.jp>
Date: Thu, 11 Aug 2022 15:01:23 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Content-Language: en-US
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
References: <000000000000da8a9b0570a29c01@google.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <000000000000da8a9b0570a29c01@google.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello.
 https://syzkaller.appspot.com/text?tag=CrashReport&x=154869fd080000
 suggests that p9_client_rpc() is trapped at infinite retry loop again: /*
 Wait for the response */ err = wait_event_killable(req->wq, req->status >=
 REQ_STATUS_RCVD); 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oM235-00BMCq-4I
Subject: Re: [V9fs-developer] INFO: task hung in iterate_supers
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
Cc: linux-fsdevel@vger.kernel.org, "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>,
 syzbot <syzbot+2349f5067b1772c1d8a5@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8uCgpodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS90ZXh0P3RhZz1DcmFzaFJlcG9y
dCZ4PTE1NDg2OWZkMDgwMDAwCnN1Z2dlc3RzIHRoYXQgcDlfY2xpZW50X3JwYygpIGlzIHRyYXBw
ZWQgYXQgaW5maW5pdGUgcmV0cnkgbG9vcAoKLS0tLS0tLS0tLQphZ2FpbjoKICAgICAgICAvKiBX
YWl0IGZvciB0aGUgcmVzcG9uc2UgKi8KICAgICAgICBlcnIgPSB3YWl0X2V2ZW50X2tpbGxhYmxl
KHJlcS0+d3EsIHJlcS0+c3RhdHVzID49IFJFUV9TVEFUVVNfUkNWRCk7CgogICAgICAgIC8qIE1h
a2Ugc3VyZSBvdXIgcmVxIGlzIGNvaGVyZW50IHdpdGggcmVnYXJkIHRvIHVwZGF0ZXMgaW4gb3Ro
ZXIKICAgICAgICAgKiB0aHJlYWRzIC0gZWNob2VzIHRvIHdtYigpIGluIHRoZSBjYWxsYmFjawog
ICAgICAgICAqLwogICAgICAgIHNtcF9ybWIoKTsKCiAgICAgICAgaWYgKGVyciA9PSAtRVJFU1RB
UlRTWVMgJiYgYy0+c3RhdHVzID09IENvbm5lY3RlZCAmJgogICAgICAgICAgICB0eXBlID09IFA5
X1RGTFVTSCkgewogICAgICAgICAgICAgICAgc2lncGVuZGluZyA9IDE7CiAgICAgICAgICAgICAg
ICBjbGVhcl90aHJlYWRfZmxhZyhUSUZfU0lHUEVORElORyk7CiAgICAgICAgICAgICAgICBnb3Rv
IGFnYWluOwogICAgICAgIH0KLS0tLS0tLS0tLQoKd2hpY2ggSSBndWVzcyB0aGF0IG5ldC85cC90
cmFuc19mZC5jIGlzIGZhaWxpbmcgdG8gY2FsbCBwOV9jbGllbnRfY2IoKQppbiBvcmRlciB0byB1
cGRhdGUgcmVxLT5zdGF0dXMgYW5kIHdha2UgdXAgcmVxLT53cS4KCkJ1dCB3aHkgZG9lcyBwOSB0
aGluayB0aGF0IEZsdXNoIG9wZXJhdGlvbiB3b3J0aCByZXRyeWluZyBmb3JldmVyPwoKVGhlIHBl
ZXIgc2lkZSBzaG91bGQgYmUgYWJsZSB0byBkZXRlY3QgY2xvc2Ugb2YgZmlsZSBkZXNjcmlwdG9y
IG9uIGxvY2FsCnNpZGUgZHVlIHRvIHByb2Nlc3MgdGVybWluYXRpb24gdmlhIFNJR0tJTEwsIGFu
ZCB0aGUgcGVlciBzaWRlIHNob3VsZCBiZQphYmxlIHRvIHBlcmZvcm0gYXBwcm9wcmlhdGUgcmVj
b3Zlcnkgb3BlcmF0aW9uIGV2ZW4gaWYgbG9jYWwgc2lkZSBjYW5ub3QKcmVjZWl2ZSByZXNwb25z
ZSBmb3IgRmx1c2ggb3BlcmF0aW9uLgoKVGh1cywgd2h5IG5vdCB0byBnaXZlIHVwIHVwb24gU0lH
S0lMTD8KCgpPbiAyMDE4LzA3LzEwIDE5OjMwLCBzeXpib3Qgd3JvdGU6Cj4gSGVsbG8sCj4gCj4g
c3l6Ym90IGZvdW5kIHRoZSBmb2xsb3dpbmcgY3Jhc2ggb246Cj4gCj4gSEVBRCBjb21taXQ6wqDC
oMKgIGQwMGQ2ZDlhMzM5ZCBBZGQgbGludXgtbmV4dCBzcGVjaWZpYyBmaWxlcyBmb3IgMjAxODA3
MDkKPiBnaXQgdHJlZTrCoMKgwqDCoMKgwqAgbGludXgtbmV4dAo+IGNvbnNvbGUgb3V0cHV0OiBo
dHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/eD0xMTExNzliMjQwMDAwMAo+
IGtlcm5lbCBjb25maWc6wqAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8uY29uZmln
P3g9OTRmZTJiNTg2YmVjY2FjZAo+IGRhc2hib2FyZCBsaW5rOiBodHRwczovL3N5emthbGxlci5h
cHBzcG90LmNvbS9idWc/ZXh0aWQ9MjM0OWY1MDY3YjE3NzJjMWQ4YTUKPiBjb21waWxlcjrCoMKg
wqDCoMKgwqAgZ2NjIChHQ0MpIDguMC4xIDIwMTgwNDEzIChleHBlcmltZW50YWwpCj4gc3l6a2Fs
bGVyIHJlcHJvOmh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwcm8uc3l6P3g9MTc0
MzI5YjI0MDAwMDAKPiBDIHJlcHJvZHVjZXI6wqDCoCBodHRwczovL3N5emthbGxlci5hcHBzcG90
LmNvbS94L3JlcHJvLmM/eD0xMTIyOTA0NDQwMDAwMAo+IAo+IElNUE9SVEFOVDogaWYgeW91IGZp
eCB0aGUgYnVnLCBwbGVhc2UgYWRkIHRoZSBmb2xsb3dpbmcgdGFnIHRvIHRoZSBjb21taXQ6Cj4g
UmVwb3J0ZWQtYnk6IHN5emJvdCsyMzQ5ZjUwNjdiMTc3MmMxZDhhNUBzeXprYWxsZXIuYXBwc3Bv
dG1haWwuY29tCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdjlmcy1kZXZlbG9wZXIK
