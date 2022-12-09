Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6554964826C
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Dec 2022 13:37:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3cdJ-0007wU-Tm;
	Fri, 09 Dec 2022 12:37:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pabeni@redhat.com>) id 1p3cd7-0007wK-8q
 for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Dec 2022 12:37:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kKcc7XQPg0UZn1AHNfQ4N2d5zF9JzBW3g3hPGFAB4Kc=; b=IbhK00n66WfFgs04p2B6HE6JOB
 I6AYRgrvFMFbaCMr7Ia9G4tEuWLw32wqJy9g2VTtUEZIsrmsvCdtONDdsWoVN6tUJrByznH6Vlvw5
 v4NW94dSpyqrgOiYqmXgJmnRk/HeBTevI5LjDDKQ8DH5d9LxS8Uefbfbj8w8sW63Fs/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kKcc7XQPg0UZn1AHNfQ4N2d5zF9JzBW3g3hPGFAB4Kc=; b=gTdcvvS3MA85Sn+1axQ7doDRco
 UPnS0Jzel4vAbVaIYzUHTQg2ft4G+E61ydQtN5U356PyzdZRC/omKBzkTBa/76h+QBF75KYeXYsDL
 OB311vl9ZwI+q4F1OkwT5Tc1TuLrlH2IHQ7j8xXEPlb+1yru4XMqdY4u5AQlXpAFsxcY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p3ccz-0006So-FF for v9fs-developer@lists.sourceforge.net;
 Fri, 09 Dec 2022 12:37:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1670589435;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kKcc7XQPg0UZn1AHNfQ4N2d5zF9JzBW3g3hPGFAB4Kc=;
 b=ZG3qqAatQhAgpOboJAhhAnXOsAls6GT3djKhXpAx8qhAmpWP+j5Ewoo4/diUxYxZxAhmAx
 IsB4N7gRUZDNj5yOs+yBwaGHPcGpIAQwcjkCOeZuP6frx+KIOVT+ppWBotynfu9bGbnIWY
 PFnFWXmmPhUxIB2B9Yq/ZGaPsueGibY=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-63-ptuK3pybONKXJPMGn9rTZw-1; Fri, 09 Dec 2022 07:37:14 -0500
X-MC-Unique: ptuK3pybONKXJPMGn9rTZw-1
Received: by mail-wm1-f69.google.com with SMTP id
 r67-20020a1c4446000000b003d09b0fbf54so3892390wma.3
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 09 Dec 2022 04:37:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kKcc7XQPg0UZn1AHNfQ4N2d5zF9JzBW3g3hPGFAB4Kc=;
 b=1O1oCij/5e6XszQjOK00/wTFWXi/puj+oltXHLPUoXmiB5FogL0KVkoFtgT3fhxj3C
 qkcIPBZCVBRKzzmGNNfMf5jg/Jjn5wFJSxKwGuZHzrmRGBUoZ7xDomQrSZdefXKa44kL
 DoPdhEGH3pakOGxiVi4ssXDusF2QHhRuHUbSUGOWliWtAfvmu6IcxhwkGpKRE1tipBqc
 kAji1RHdS8VtnSu7EQuf0l5e6c6Qenr1CPofGrHd4QE6KKPJdanm8MsAzYaRHMX//XbZ
 uO3tuhs+BgdAq+JkiP/Tlg22wDfuUv/1NgOqdd+N1qDEh7N94dbu6l/N5rvNJSjMfawJ
 vOiA==
X-Gm-Message-State: ANoB5pn00yuyN+/EIdqOAchg7Hja93WdmSyFatbYW/p9rpqTqnirarRW
 oK+ZCxpNfVu+DdxvWZW8KWTGe3AG+JPK/xyOjGVspvmnqVGtoC+39MyibYNuXtNWo37+957wA1K
 JB/Rho2p40/iSswLKBd9mafke2iYeG4MJiGg=
X-Received: by 2002:a05:600c:4fd0:b0:3d1:c0a1:4804 with SMTP id
 o16-20020a05600c4fd000b003d1c0a14804mr4752740wmq.17.1670589432837; 
 Fri, 09 Dec 2022 04:37:12 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5DyMiYpWNcqaQueb0cVh7tJ5lH4JY75MZjLcmrbwYgfM+x/au0sr5C4m2hvq8cZrZMVyWo5g==
X-Received: by 2002:a05:600c:4fd0:b0:3d1:c0a1:4804 with SMTP id
 o16-20020a05600c4fd000b003d1c0a14804mr4752714wmq.17.1670589432518; 
 Fri, 09 Dec 2022 04:37:12 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-106-22.dyn.eolo.it.
 [146.241.106.22]) by smtp.gmail.com with ESMTPSA id
 j10-20020a05600c1c0a00b003b49bd61b19sm9284355wms.15.2022.12.09.04.37.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Dec 2022 04:37:11 -0800 (PST)
Message-ID: <d220402a232e204676d9100d6fe4c2ae08f753ee.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Benjamin Coddington <bcodding@redhat.com>, netdev@vger.kernel.org
Date: Fri, 09 Dec 2022 13:37:08 +0100
In-Reply-To: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
References: <cover.1669036433.git.bcodding@redhat.com>
 <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2022-11-21 at 08:35 -0500, Benjamin Coddington wrote:
 > Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting
 the > GFP_NOIO flag on sk_allocation which the networking system [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p3ccz-0006So-FF
Subject: Re: [V9fs-developer] [PATCH v1 2/3] Treewide: Stop corrupting
 socket's task_frag
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, samba-technical@lists.samba.org,
 Valentina Manea <valentina.manea.m@gmail.com>, linux-nvme@lists.infradead.org,
 Philipp Reisner <philipp.reisner@linbit.com>,
 David Howells <dhowells@redhat.com>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Eric Dumazet <edumazet@google.com>, linux-nfs@vger.kernel.org,
 Marc Dionne <marc.dionne@auristor.com>, Shuah Khan <shuah@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Mike Christie <michael.christie@oracle.com>,
 drbd-dev@lists.linbit.com, linux-cifs@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Mark Fasheh <mark@fasheh.com>, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, Christine Caulfield <ccaulfie@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 open-iscsi@googlegroups.com, Anna Schumaker <anna@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, Josef Bacik <josef@toxicpanda.com>,
 nbd@other.debian.org, linux-block@vger.kernel.org,
 David Teigland <teigland@redhat.com>, Joel Becker <jlbec@evilplan.org>,
 v9fs-developer@lists.sourceforge.net, Keith Busch <kbusch@kernel.org>,
 ceph-devel@vger.kernel.org, Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, Chris Leech <cleech@redhat.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>,
 Christoph =?ISO-8859-1?Q?B=F6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Chuck Lever <chuck.lever@oracle.com>, Lee Duncan <lduncan@suse.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 "David S. Miller" <davem@davemloft.net>, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCAyMDIyLTExLTIxIGF0IDA4OjM1IC0wNTAwLCBCZW5qYW1pbiBDb2RkaW5ndG9uIHdy
b3RlOgo+IFNpbmNlIG1vdmluZyB0byBtZW1hbGxvY19ub2ZzX3NhdmUvcmVzdG9yZSwgU1VOUlBD
IGhhcyBzdG9wcGVkIHNldHRpbmcgdGhlCj4gR0ZQX05PSU8gZmxhZyBvbiBza19hbGxvY2F0aW9u
IHdoaWNoIHRoZSBuZXR3b3JraW5nIHN5c3RlbSB1c2VzIHRvIGRlY2lkZQo+IHdoZW4gaXQgaXMg
c2FmZSB0byB1c2UgY3VycmVudC0+dGFza19mcmFnLiAgVGhlIHJlc3VsdHMgb2YgdGhpcyBhcmUK
PiB1bmV4cGVjdGVkIGNvcnJ1cHRpb24gaW4gdGFza19mcmFnIHdoZW4gU1VOUlBDIGlzIGludm9s
dmVkIGluIG1lbW9yeQo+IHJlY2xhaW0uCj4gCj4gVGhlIGNvcnJ1cHRpb24gY2FuIGJlIHNlZW4g
aW4gY3Jhc2hlcywgYnV0IHRoZSByb290IGNhdXNlIGlzIG9mdGVuCj4gZGlmZmljdWx0IHRvIGFz
Y2VydGFpbiBhcyBhIGNyYXNoaW5nIG1hY2hpbmUncyBzdGFjayB0cmFjZSB3aWxsIGhhdmUgbm8K
PiBldmlkZW5jZSBvZiBiZWluZyBuZWFyIE5GUyBvciBTVU5SUEMgY29kZS4gIEkgYmVsaWV2ZSB0
aGlzIHByb2JsZW0gdG8KPiBiZSBtdWNoIG1vcmUgcGVydmFzaXZlIHRoYW4gcmVwb3J0cyB0byB0
aGUgY29tbXVuaXR5IG1heSBpbmRpY2F0ZS4KPiAKPiBGaXggdGhpcyBieSBoYXZpbmcga2VybmVs
IHVzZXJzIG9mIHNvY2tldHMgdGhhdCBtYXkgY29ycnVwdCB0YXNrX2ZyYWcgZHVlCj4gdG8gcmVj
bGFpbSBzZXQgc2tfdXNlX3Rhc2tfZnJhZyA9IGZhbHNlLiAgUHJlZW1wdGl2ZWx5IGNvcnJlY3Rp
bmcgdGhpcwo+IHNpdHVhdGlvbiBmb3IgdXNlcnMgdGhhdCBzdGlsbCBzZXQgc2tfYWxsb2NhdGlv
biBhbGxvd3MgdGhlbSB0byBjb252ZXJ0IHRvCj4gbWVtYWxsb2Nfbm9mc19zYXZlL3Jlc3RvcmUg
d2l0aG91dCB0aGUgc2FtZSB1bmV4cGVjdGVkIGNvcnJ1cHRpb25zIHRoYXQgYXJlCj4gc3VyZSB0
byBmb2xsb3csIHVubGlrZWx5IHRvIHNob3cgdXAgaW4gdGVzdGluZywgYW5kIGRpZmZpY3VsdCB0
byBiaXNlY3QuCj4gCj4gQ0M6IFBoaWxpcHAgUmVpc25lciA8cGhpbGlwcC5yZWlzbmVyQGxpbmJp
dC5jb20+Cj4gQ0M6IExhcnMgRWxsZW5iZXJnIDxsYXJzLmVsbGVuYmVyZ0BsaW5iaXQuY29tPgo+
IENDOiAiQ2hyaXN0b3BoIELDtmhtd2FsZGVyIiA8Y2hyaXN0b3BoLmJvZWhtd2FsZGVyQGxpbmJp
dC5jb20+Cj4gQ0M6IEplbnMgQXhib2UgPGF4Ym9lQGtlcm5lbC5kaz4KPiBDQzogSm9zZWYgQmFj
aWsgPGpvc2VmQHRveGljcGFuZGEuY29tPgo+IENDOiBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5l
bC5vcmc+Cj4gQ0M6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgo+IENDOiBTYWdpIEdy
aW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+IENDOiBMZWUgRHVuY2FuIDxsZHVuY2FuQHN1c2Uu
Y29tPgo+IENDOiBDaHJpcyBMZWVjaCA8Y2xlZWNoQHJlZGhhdC5jb20+Cj4gQ0M6IE1pa2UgQ2hy
aXN0aWUgPG1pY2hhZWwuY2hyaXN0aWVAb3JhY2xlLmNvbT4KPiBDQzogIkphbWVzIEUuSi4gQm90
dG9tbGV5IiA8amVqYkBsaW51eC5pYm0uY29tPgo+IENDOiAiTWFydGluIEsuIFBldGVyc2VuIiA8
bWFydGluLnBldGVyc2VuQG9yYWNsZS5jb20+Cj4gQ0M6IFZhbGVudGluYSBNYW5lYSA8dmFsZW50
aW5hLm1hbmVhLm1AZ21haWwuY29tPgo+IENDOiBTaHVhaCBLaGFuIDxzaHVhaEBrZXJuZWwub3Jn
Pgo+IENDOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+
IENDOiBEYXZpZCBIb3dlbGxzIDxkaG93ZWxsc0ByZWRoYXQuY29tPgo+IENDOiBNYXJjIERpb25u
ZSA8bWFyYy5kaW9ubmVAYXVyaXN0b3IuY29tPgo+IENDOiBTdGV2ZSBGcmVuY2ggPHNmcmVuY2hA
c2FtYmEub3JnPgo+IENDOiBDaHJpc3RpbmUgQ2F1bGZpZWxkIDxjY2F1bGZpZUByZWRoYXQuY29t
Pgo+IENDOiBEYXZpZCBUZWlnbGFuZCA8dGVpZ2xhbmRAcmVkaGF0LmNvbT4KPiBDQzogTWFyayBG
YXNoZWggPG1hcmtAZmFzaGVoLmNvbT4KPiBDQzogSm9lbCBCZWNrZXIgPGpsYmVjQGV2aWxwbGFu
Lm9yZz4KPiBDQzogSm9zZXBoIFFpIDxqb3NlcGgucWlAbGludXguYWxpYmFiYS5jb20+Cj4gQ0M6
IEVyaWMgVmFuIEhlbnNiZXJnZW4gPGVyaWN2aEBnbWFpbC5jb20+Cj4gQ0M6IExhdGNoZXNhciBJ
b25rb3YgPGx1Y2hvQGlvbmtvdi5uZXQ+Cj4gQ0M6IERvbWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRl
dXNAY29kZXdyZWNrLm9yZz4KPiBDQzogIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVtbG9m
dC5uZXQ+Cj4gQ0M6IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT4KPiBDQzogSmFr
dWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4KPiBDQzogUGFvbG8gQWJlbmkgPHBhYmVuaUBy
ZWRoYXQuY29tPgo+IENDOiBJbHlhIERyeW9tb3YgPGlkcnlvbW92QGdtYWlsLmNvbT4KPiBDQzog
WGl1Ym8gTGkgPHhpdWJsaUByZWRoYXQuY29tPgo+IENDOiBDaHVjayBMZXZlciA8Y2h1Y2subGV2
ZXJAb3JhY2xlLmNvbT4KPiBDQzogSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVsLm9yZz4KPiBD
QzogVHJvbmQgTXlrbGVidXN0IDx0cm9uZC5teWtsZWJ1c3RAaGFtbWVyc3BhY2UuY29tPgo+IEND
OiBBbm5hIFNjaHVtYWtlciA8YW5uYUBrZXJuZWwub3JnPgo+IENDOiBkcmJkLWRldkBsaXN0cy5s
aW5iaXQuY29tCj4gQ0M6IGxpbnV4LWJsb2NrQHZnZXIua2VybmVsLm9yZwo+IENDOiBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gQ0M6IG5iZEBvdGhlci5kZWJpYW4ub3JnCj4gQ0M6IGxp
bnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENDOiBvcGVuLWlzY3NpQGdvb2dsZWdyb3Vw
cy5jb20KPiBDQzogbGludXgtc2NzaUB2Z2VyLmtlcm5lbC5vcmcKPiBDQzogbGludXgtdXNiQHZn
ZXIua2VybmVsLm9yZwo+IENDOiBsaW51eC1hZnNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENDOiBs
aW51eC1jaWZzQHZnZXIua2VybmVsLm9yZwo+IENDOiBzYW1iYS10ZWNobmljYWxAbGlzdHMuc2Ft
YmEub3JnCj4gQ0M6IGNsdXN0ZXItZGV2ZWxAcmVkaGF0LmNvbQo+IENDOiBvY2ZzMi1kZXZlbEBv
c3Mub3JhY2xlLmNvbQo+IENDOiB2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
PiBDQzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZwo+IENDOiBjZXBoLWRldmVsQHZnZXIua2VybmVs
Lm9yZwo+IENDOiBsaW51eC1uZnNAdmdlci5rZXJuZWwub3JnCj4gCj4gU3VnZ2VzdGVkLWJ5OiBH
dWlsbGF1bWUgTmF1bHQgPGduYXVsdEByZWRoYXQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEJlbmph
bWluIENvZGRpbmd0b24gPGJjb2RkaW5nQHJlZGhhdC5jb20+CgpJIHRoaW5rIHRoaXMgaXMgdGhl
IG1vc3QgZmVhc2libGUgd2F5IG91dCBvZiB0aGUgZXhpc3RpbmcgaXNzdWUsIGFuZCBJCnRoaW5r
IHRoaXMgcGF0Y2hzZXQgc2hvdWxkIGdvIHZpYSB0aGUgbmV0d29ya2luZyB0cmVlLCB0YXJnZXRp
bmcgdGhlCkxpbnV4IDYuMi4KCklmIHNvbWVvbmUgaGFzIGRpc2FncmVlbWVudCB3aXRoIHRoZSBh
Ym92ZSwgcGxlYXNlIHNwZWFrISAKClRoYW5rcywKClBhb2xvCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
