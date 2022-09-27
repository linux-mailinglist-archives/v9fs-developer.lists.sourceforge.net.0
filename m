Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 692D25EC8B6
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Sep 2022 17:55:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odCvd-00075k-N1;
	Tue, 27 Sep 2022 15:55:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <casey@schaufler-ca.com>) id 1odCvc-00075e-CZ
 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 15:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=coTCryraE6//vMjy1fLNSb3iLSlfq45ZwjApzHKRKSA=; b=b3uBElDCWA/ipY9ZPd8jlcdivH
 /PaBXPq7dKe9TP/NGuOOyrpCWJzcUvmDkELkucerenLgIX2VJu3Z0OlF8XCf8+5FSfOEmQclcpUpQ
 Z7FmvpUekcxUQbG2UvxXuFvlQDhaJXR/21pl7Z6U1OlRcSeBNn9L23sF4x2M7lCihbJU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=coTCryraE6//vMjy1fLNSb3iLSlfq45ZwjApzHKRKSA=; b=IDTtd/h6YOpwP7S7wEVD+t4YEa
 65cRCrYYIn+qnKyqf4a/SfAffDT/LNAiVWI9K4kaxAYMi8FNtesMKD2e2wTllYZRubVihabVnj+Ms
 9VdOxWas8sCY9+ll/nogntzoYxMMuqzn+lStwj0+9PknhXacEL2ivfgtNIDlsdtOLu3Y=;
Received: from sonic309-26.consmr.mail.ne1.yahoo.com ([66.163.184.152])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1odCvX-004f4F-TF for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 15:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1664294113; bh=coTCryraE6//vMjy1fLNSb3iLSlfq45ZwjApzHKRKSA=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To;
 b=ifJFkPZAiDgxg3b8dewqsWRLosTfAlHt1Wu/BKCyk0fZPEF1qEAuuJTf65QofysxHB4+WLyPgnyWlK6tTggYZHpe7aXO3SADJ/RnHkCnFOIKdN+NoDUBPgOAyAsExr2Muv88YdQixLCUcua5yE6avlEYATf+tpmOmPxYGBWhPLO+8TCYw92r+ECgXrKNxiDWtJGv3JqqlFnLjAJJ9j1SvnBKXT1fZil3BUPymTld5vw1DtXewplD2kXhEspFTOEFZWFEbcT2m+OjshXd/lculqu0vjuTMxayPQ/GGFP0bnvxJtYa3kJd4fR9cMcVolLQkFrLq5G6j5T09DR0MvK8CA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1664294113; bh=GeOY8SOWF1/gY0IM3llxq40hYNxBSa97GwVoZBxMvZN=;
 h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
 b=hXZ9usewk0J1q9NmC4PXA8au8hnUinCRw7uX5xjFGBf8WmxIdxj4tEWcFj5wxsw9SbAk2izJ6yK2dgH3WfdnPGihat+WxtuOke6riQ+SAY/BVnhMo/Dv5ryDFCNlJzC7LLNi65fY0XwCLjhXGvvf6oHRT7NBUQb1cXuZTXIbxRzB6pYeBdJzUSKOlOlfOoOf/2tUICGldsOPj0Uvp3nFzKQF8CIIpQUSwMZKRV5jhSpAPCCbEsNMsNDDdbTwVZh+utcwxaIt1msBX0N33dEmLY8aWciKoZ9iC+33CaltOq+GkSSW2+2XOsmBmvJFI1oO5h50jvUIAXw9KIP4XCyuCQ==
X-YMail-OSG: SpRhvFYVM1kIRV.2K3KkpFBeNZffM9hZxbo.yTLr9Ne9BGVlUiFIXL3PYbmz2TR
 2n6iqN3v95yDHSfpui4yrl7CNCRwyy3IqoXONw0UJ9Pv.CRTOIGSBbzT8_wtj2V7YYn.cRw6m4Rq
 19q2D0tfH94UxLRUT6ZYn8s_UA5PISHZRkv._s4TDcHadFKnvLUHWOuRTCE9BHKJXIXqCD9tgO81
 3VfR4hKP.UbllvcyikfSXzF4vPSP7Tv0K_XGzZkjqmf4kjS.I6sMI.FMFeFV8GlHmhhJKJjBtVEr
 O8fSnUVe7vg1Ci0GR3KI7ooTAVCzOTyGR9hWq5mMJDf1tRXiV_pQ8d4pf4utTgvHxSWSc5LYjrj8
 eFgjaQ.njps3itc5mD8UfwZVsNo_tLwSku3z4xf.k5JMJsLPUynx7AKDFqKDyrq1sehUVUjxBe2U
 RSoSsLyrwylRpf4jJAJb6fSLK_Z1n41mqaF_N2lepfN.f2ZcCcaLda1VN3MmD1huRH92n4kNgaCo
 hR5h.9syLz_mh.3p548UrLJnd_wHUREz5pOhH2TaI3rrDAZoAysVpN9m7Fn3lrJfJx3TuZlUfV5m
 _0i5WgLRwjpAeGkt2gjgCcCY.kAxsi8GgSoQSLS63RC50BQOy6wFnP6con58vXswIf.9MT1TaG2d
 Zx_W1iz.c7.6UCm4t2M2Sil0.dVCKsmW0tpTmDv_XUFEYPiUhz0KIHdOYQ8Ns4Ru.vJ4Wkqw223P
 ptUsPpTtOHUFjAjzlKAN6N0hcJA6txTBvr3pO7T18Fp.fa6rJoIw.MydHYxKa.DG6SrrkuCGCG8p
 UrSNkrov8LU.mHurWm5_ziZiTs6107zD68vrKWnRUgpRBNK_VXMi4UDGkx8RjKWCS1EKkHXynZQC
 85gl86R_D6Ulr2m1I2vUu7CYuULUXDJVvbGNWglMRtri_vtR1Cy4ecNzzRkLomz72tSQQBezXi47
 lZXT3LJ.OGz8QbWVsqHSjfuMRewhr7VGkPew9bDeaDzRsn1QyeEVY3aXefhbio7kpw74TrTgvO5D
 hTOPhGNkZBKIV_L09wnNEQXdsUINbPUAvJdydFAP0RE_qx0azTuAj5H2PR7ybhwtkfEQtEnqaP6.
 7IizKxswAirWdcZkJzPoAFqz43RfNaURE1bUv7Z3APxQVp1MPZoOyJNG0ADKjpf7blwg0NRopKgG
 ErqLDGNDLCPl2drQTZuO8_PyZ6TUK3NXQ8BH.eDCnlWCsl_MvEUxMfrdTonS0HGx5_n6v8La3VTX
 sl2OKfFtTDaQAM2Rm72XUqPnlXflgjC4yafpZlvtaxpI2rMTlRPthsTCIZkXNYUTfcDKLs7uzhJt
 ojzBa7s6Tv8SoYWhJsDG.Th6PqC95zq0d8if8Lgwwyr3g6sB7USS32URPoWc4KxPrZnH09KSu.U7
 2B2_OTkEUb_bOB086X2v6KRHODBm8lPFhXXHxyNLQ0alb9bVLTqsbEPQbPnv6JHCMsst9hSg2FyC
 Z_wdW0KPFC.Zo5dVAh2nPNWHPH0sCzFxVq_6fnjtW51hKdTUBC7Myxog8qp1Qwc4gTvbVngLnfPU
 8JwQ_DeYnEz0zCvEM2LzkgoC901PSK2qlu0.axAkO0w9._Mv_51eo5LnhS3EKzQtu497fuC6DxqN
 F6akW6kTZ3WVKsF1dOavduJNki_t7tr.euOx5pIH4LbjRFNVUyPKM6wVkPScB9RZ5gmYG226a9M.
 oB1XNdwSkEaoD.89nfEjDB_cWztVwf49Gk2wga6Asi.7dLVUIbAEo8Op6Zla8_.q6.YV00WMszX5
 afQDoHdssgkTxCmNM5Sjh62E4ruj7nQ.GQr.fHR4Uu6VvZhwyt_gMRs.LkQ.5vBiUJNvm6U08GQp
 epXPpuTb27baD.CCuhe6GpXHPWH7PZoVnkpvVSITsTKyAYob.jK7Qj.qHSdRAVxNmZ8BWpUkQ2jY
 5_Gbb8lSQ1vvMhnCnVw2mvaPnlN8dxGhQqi_ocGSdFxAX8iiNxDeTrj7CRHjUjshkhSN1g4upgjY
 t6ja9dW4wWnDuuXvCJRyP.pEc_MtB6C1CXYf5ETi5AC5u_5cWNHbvVJAhiHoEqKsQhs62R5iKPl7
 nwh6X477gsX5m6ve678zbmP5gI7dg8BUk7KtXi8yk511ud49WZKfnOZIUSFW1kgWB37yJvgq9WdD
 rCwGRTnVOrkvVOgwEDWdQKqF1f4px9bWsVIpv3SSwTjfcv4E6PyQ1su73klbDi8GDTjkGg3d63ew
 MnV9J5kDidBvMmi2lldxhccixlTkon1Mr8R4gZJb38lQG0Est8nvt6hjKV7pgSNh2i2OjEM8ApTH
 vaIZeBl0RJXZgJjYFRoYX7GEHPM0PXIA-
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Tue, 27 Sep 2022 15:55:13 +0000
Received: by hermes--production-bf1-759bcdd488-6vlh5 (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 257e07de7080f81fa365df07b75f3a66; 
 Tue, 27 Sep 2022 15:55:10 +0000 (UTC)
Message-ID: <4954ef66-52ff-52de-9d7d-41da1b070b13@schaufler-ca.com>
Date: Tue, 27 Sep 2022 08:55:07 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Seth Forshee <sforshee@kernel.org>
References: <20220926140827.142806-1-brauner@kernel.org>
 <99173046-ab2e-14de-7252-50cac1f05d27@schaufler-ca.com>
 <20220927074101.GA17464@lst.de>
 <a0cf3efb-dea1-9cb0-2365-2bcc2ca1fdba@schaufler-ca.com>
 <YzMT2axDeni7L1O8@do-x1extreme>
From: Casey Schaufler <casey@schaufler-ca.com>
In-Reply-To: <YzMT2axDeni7L1O8@do-x1extreme>
X-Mailer: WebService/1.1.20702
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/27/2022 8:16 AM, Seth Forshee wrote: > On Tue, Sep 27, 
 2022 at 07:11:17AM -0700, Casey Schaufler wrote: >> On 9/27/2022 12:41 AM,
 Christoph Hellwig wrote: >>> On Mon, Sep 26, 2022 at 05:22:45PM - [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.184.152 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1odCvX-004f4F-TF
Subject: Re: [V9fs-developer] [PATCH v2 00/30] acl: add vfs posix acl api
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
Cc: linux-cifs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 casey@schaufler-ca.com, linux-security-module@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 9/27/2022 8:16 AM, Seth Forshee wrote:
> On Tue, Sep 27, 2022 at 07:11:17AM -0700, Casey Schaufler wrote:
>> On 9/27/2022 12:41 AM, Christoph Hellwig wrote:
>>> On Mon, Sep 26, 2022 at 05:22:45PM -0700, Casey Schaufler wrote:
>>>> I suggest that you might focus on the acl/evm interface rather than the entire
>>>> LSM interface. Unless there's a serious plan to make ima/evm into a proper LSM
>>>> I don't see how the breadth of this patch set is appropriate.
>>> Umm. The problem is the historically the Linux xattr interface was
>>> intended for unstructured data, while some of it is very much structured
>>> and requires interpretation by the VFS and associated entities.  So
>>> splitting these out and add proper interface is absolutely the right
>>> thing to do and long overdue (also for other thing like capabilities).
>>> It might make things a little more verbose for LSM, but it fixes a very
>>> real problem.
>> Here's the problem I see. All of the LSMs see xattrs, except for their own,
>> as opaque objects. Introducing LSM hooks to address the data interpretation
>> issues between VFS and EVM, which is not an LSM, adds to an already overlarge
>> and interface. And the "real" users of the interface don't need the new hook.
>> I'm not saying that the ACL doesn't have problems. I'm not saying that the
>> solution you've proposed isn't better than what's there now. I am saying that
>> using LSM as a conduit between VFS and EVM at the expense of the rest of the
>> modules is dubious. A lot of change to LSM for no value to LSM.
>>
>> I am not adamant about this. A whole lot worse has been done for worse reasons.
>> But as Paul says, we're overdue to make an effort to keep the LSM interface sane.
> So I assume the alternative you have in mind would be to use the
> existing setxattr hook?

That is how it works today.

>  I worry about type confusion if an LSM does
> someday want to look inside the ACL data.

I suggest that changes to system behavior based on the content of
an ACL really belongs in the ACL code, not in an LSM. Can I imagine
someone wanting to add SELinux policy that controls what entries
are allowed to be set by a particular domain? Sure, but I can't see
how that would be popular with existing ACL fans.

>  Unless LSMs aren't supposed to
> look inside of xattr data, but in that case why pass the data pointer on
> to the LSMs?

So that the LSM can look at it's own xattr data.

> Note that the caller of this new hook does not have access to the uapi
> xattr data, and I think this is the right place for the new hook to be
> called as it's the interface that stacked filesystems like overlayfs
> will use to write ACLs to the lower filesystems.

I'm not saying anything about the organization of the calling code.
Why is it calling

	security_acl_hooha(...)

instead of

	evm_acl_hooha(...)


>
> Seth


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
