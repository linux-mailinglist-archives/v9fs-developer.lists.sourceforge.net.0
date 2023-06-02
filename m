Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF8E71FFD9
	for <lists+v9fs-developer@lfdr.de>; Fri,  2 Jun 2023 12:58:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1q52Tz-0002XF-QB;
	Fri, 02 Jun 2023 10:58:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nogikh@google.com>) id 1q52Ty-0002X6-6M
 for v9fs-developer@lists.sourceforge.net;
 Fri, 02 Jun 2023 10:58:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O+R6ScZ/Un56g/QDJNYbFzDtHds5teBRsW9jLy+uI24=; b=hHkwQ7wPSfOTrrI7lIfjbaO+oO
 MaFU+Sd34JJ4bW8sKBM5VxJ4H9MtsBdZ4oGqe5c8OJlm7etzujo1P5CyCuz8jCFdRzK3i6xUc2teG
 tcY8h3lJ/4VxCXN6Dash08FRmC8Pt94T63MNxEKbkoV+Uvmnt/EK4Y8ioJTIqC8UKc9E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O+R6ScZ/Un56g/QDJNYbFzDtHds5teBRsW9jLy+uI24=; b=HVF7o3JmXiz06TEebuFWKWmKTg
 V3sqrQ2hIw8X5xNE6q/bbdKz7mT9HihKFngDXjU1K84efu7eoALGlsiHgNwhKLCBSF0uog70WTacg
 d84sBm7f2zAkHdmONAiWWNYIuyy+pYey2g8e4J1Apj7lTt7TNqtRy2ITQYhSNKxB/HZg=;
Received: from mail-il1-f175.google.com ([209.85.166.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q52Tw-009CLx-Ah for v9fs-developer@lists.sourceforge.net;
 Fri, 02 Jun 2023 10:58:10 +0000
Received: by mail-il1-f175.google.com with SMTP id
 e9e14a558f8ab-33b398f2ab8so110885ab.0
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 02 Jun 2023 03:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1685703482; x=1688295482;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=O+R6ScZ/Un56g/QDJNYbFzDtHds5teBRsW9jLy+uI24=;
 b=1AXjAvflwc/uJbp/lBd/8rKNARlBO3y4OaLnZbCJui3lEWgw9Tsp7i5C95x9TRdfkH
 h68IwoM/XROIOZ4oSQuK30RHZziBey2MmTLrZjK1BvGsb4b5XeRPTty3uA2KSstG3CRT
 uIpm3VoLAi1RWtqrO18bXgi/GP2pYH0Gldr5t/hhQN1zBEVVaN2UCjm9gRVDPoyLOsbC
 OR2ub1aoyFpyTjKqnNmyht1plhwqk0BYS94bu+MbfL18CyzI5uv3zV/Ij3RDrjyCjxMs
 cXIkApmTJMZUzCnnp5QhujvQ+jknP0LfPqUqX1tHeaSvvDfM56oeG0hyCydQqUimUUUG
 OgRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685703482; x=1688295482;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=O+R6ScZ/Un56g/QDJNYbFzDtHds5teBRsW9jLy+uI24=;
 b=ODiu2AmZWQs3cumS3b0QBeae7OyX0f/w5V1roOznLCeZGjG8zclrRcCjP2DL1CHq+T
 pLCe5+WBvfnKJyTABnggjZS0x1kVUmgsOnY2zsgGGC29cJqcEXVDnkwdsZ/q9qs/he7T
 tU+Lr78ZT2eGc93wvswN0wuqKh4DiNxJwgMeYh2rPFCu7ZhEVopnCEIX0bmGqY8VKZ+o
 I/wX0FSSQMszQ9vtljxBORRGMuAYgbaoL4QdtTh/cWG2sP6nOyX/n0XvRybeivugAHT9
 6H3Jw1qBaonQosSmhfDKEQ7E5Rzo0CXt6t0yWoXcSkeoKo9Sbku5Xzh4stTEVrWEfvR9
 Cbcg==
X-Gm-Message-State: AC+VfDwryA+USQ1iCXV7oBUa4aQ1bvyJQqYq6evJu7YnK3ZQjgr98S4I
 NeGv3OJxvklnHlCfofJgfCU9FW3AguRd+oPfJDkOdQ==
X-Google-Smtp-Source: ACHHUZ4XzLlFhxj34TA+VRTk3cwSLwKaDIj9MmihQ/k+sNQL3X+68B23BasAbzjIInkv8Zd9eGTJbq0bcKczNhcOwgU=
X-Received: by 2002:a05:6e02:1785:b0:33a:e716:a766 with SMTP id
 y5-20020a056e02178500b0033ae716a766mr206692ilu.20.1685703482599; Fri, 02 Jun
 2023 03:58:02 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000015ac7905e97ebaed@google.com>
 <00000000000017cc6205fd233643@google.com>
In-Reply-To: <00000000000017cc6205fd233643@google.com>
Date: Fri, 2 Jun 2023 12:57:51 +0200
Message-ID: <CANp29Y7kwQnezWxMZSQ=rFAky-Jn4SmMVqUh77tssnFYOUc=Kg@mail.gmail.com>
To: syzbot <syzbot+67d13108d855f451cafc@syzkaller.appspotmail.com>
X-Spam-Score: -13.2 (-------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Looks like the guilty patch was just edited -next. As there's
 no fixing commit, let's just invalidate the bug: #syz invalid 
 Content analysis details:   (-13.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.175 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1q52Tw-009CLx-Ah
Subject: Re: [V9fs-developer] [syzbot] KASAN: use-after-free Read in
 rdma_close
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Aleksandr Nogikh via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Aleksandr Nogikh <nogikh@google.com>
Cc: lucho@ionkov.net, leon@kernel.org, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

TG9va3MgbGlrZSB0aGUgZ3VpbHR5IHBhdGNoIHdhcyBqdXN0IGVkaXRlZCAtbmV4dC4KCkFzIHRo
ZXJlJ3Mgbm8gZml4aW5nIGNvbW1pdCwgbGV0J3MganVzdCBpbnZhbGlkYXRlIHRoZSBidWc6Cgoj
c3l6IGludmFsaWQKCk9uIEZyaSwgSnVuIDIsIDIwMjMgYXQgMTI6NDLigK9QTSBzeXpib3QKPHN5
emJvdCs2N2QxMzEwOGQ4NTVmNDUxY2FmY0BzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tPiB3cm90
ZToKPgo+IFRoaXMgYnVnIGlzIG1hcmtlZCBhcyBmaXhlZCBieSBjb21taXQ6Cj4gOXA6IGNsaWVu
dF9jcmVhdGUvZGVzdHJveTogb25seSBjYWxsIHRyYW5zX21vZC0+Y2xvc2UgYWZ0ZXIgY3JlYXRl
Cj4KPiBCdXQgSSBjYW4ndCBmaW5kIGl0IGluIHRoZSB0ZXN0ZWQgdHJlZXNbMV0gZm9yIG1vcmUg
dGhhbiA5MCBkYXlzLgo+IElzIGl0IGEgY29ycmVjdCBjb21taXQ/IFBsZWFzZSB1cGRhdGUgaXQg
YnkgcmVwbHlpbmc6Cj4KPiAjc3l6IGZpeDogZXhhY3QtY29tbWl0LXRpdGxlCj4KPiBVbnRpbCB0
aGVuIHRoZSBidWcgaXMgc3RpbGwgY29uc2lkZXJlZCBvcGVuIGFuZCBuZXcgY3Jhc2hlcyB3aXRo
Cj4gdGhlIHNhbWUgc2lnbmF0dXJlIGFyZSBpZ25vcmVkLgo+Cj4gS2VybmVsOiBMaW51eAo+IERh
c2hib2FyZCBsaW5rOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9Njdk
MTMxMDhkODU1ZjQ1MWNhZmMKPgo+IC0tLQo+IFsxXSBJIGV4cGVjdCB0aGUgY29tbWl0IHRvIGJl
IHByZXNlbnQgaW46Cj4KPiAxLiBmb3Ita2VybmVsY2kgYnJhbmNoIG9mCj4gZ2l0Oi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdAo+Cj4gMi4g
bWFzdGVyIGJyYW5jaCBvZgo+IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC9icGYvYnBmLW5leHQuZ2l0Cj4KPiAzLiBtYXN0ZXIgYnJhbmNoIG9mCj4gZ2l0Oi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2JwZi9icGYuZ2l0Cj4KPiA0
LiBtYWluIGJyYW5jaCBvZgo+IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC9kYXZlbS9uZXQtbmV4dC5naXQKPgo+IFRoZSBmdWxsIGxpc3Qgb2YgMTAgdHJlZXMg
Y2FuIGJlIGZvdW5kIGF0Cj4gaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vdXBzdHJlYW0v
cmVwb3MKPgo+IC0tCj4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUg
c3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAic3l6a2FsbGVyLWJ1Z3MiIGdyb3VwLgo+
IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxz
IGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gc3l6a2FsbGVyLWJ1Z3MrdW5zdWJzY3JpYmVAZ29v
Z2xlZ3JvdXBzLmNvbS4KPiBUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0
IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9zeXprYWxsZXItYnVncy8wMDAwMDAw
MDAwMDAxN2NjNjIwNWZkMjMzNjQzJTQwZ29vZ2xlLmNvbS4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
Vjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
