Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 540025ED120
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 01:38:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odK9H-0008Uc-CU;
	Tue, 27 Sep 2022 23:38:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <casey@schaufler-ca.com>) id 1odK9F-0008UW-Ce
 for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 23:38:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dcoJeyML+0RbcNiEVPffEvxaFIftFIaaNOl8mKiOxH0=; b=fXe4PNNNupqRHtX5XpRh8B3hop
 /NlUUf/YVsM0oGOl+kzuRx6yXGIr2lTKXJkBWncVhd5LnxGy0SmzrlTx1FBG45baKzjLCuuptV5Cg
 0nR1wX2nlJvlhbZuWraftM609gIyuF/+ZUKGGBX6UVWG0BmDyyDWsKLPvSv942NGVFkc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dcoJeyML+0RbcNiEVPffEvxaFIftFIaaNOl8mKiOxH0=; b=m+EzmvsAPSIxzyNDmmG8Oepukm
 gd+TiJ/W7QIIaIb0CDps9mC2pVtd5PEz9RxQEOftqBK0nsS2CkSNesjE9MP2aeqjjwNtpaiVuY9Zm
 FPSnpr3ylUJP7l2BXzio1O0R8kAE2c/H7pEdSMc7iDJRuL6BMzCrGzfjiQ+vOKhAg0tA=;
Received: from sonic308-16.consmr.mail.ne1.yahoo.com ([66.163.187.39])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1odK9N-0000nP-Cw for v9fs-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 23:38:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1664321879; bh=dcoJeyML+0RbcNiEVPffEvxaFIftFIaaNOl8mKiOxH0=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To;
 b=RcChjhewUU/yqn7GWVsj8OZ8sB/qzeclFs49E+iEtpqv6EWP2wwjwKjYOuZktksHKVvANTMu+gB3Mys3cBESqCwOA4eVqV8CyfpQAN1/jNH7hrrDMYyX5pxV+qa8bocQTOD5J+cEHQBtzBMm1XqWnPFw12RODVyQ0/u0YGgFCZw2FiLbpoquJD99C7j/p7v3TuJlQDZY1S3/89qhy6S5GKe++2MiknR6MY0CGJo2UEykoJfAEjuYi1R17JRHaTPF8+C1GZy7no3V3Vgd6SUTD1DNiAGkt0FoQodWaYM2EqMtN/YNcpLErv0LbtRCxjPgpfDormH1VCxc6MfUBVX46Q==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1664321879; bh=Ik0PYjOuc7lxbFxdO2yAjC6eVPf0i0AdrVbA0qtDBB7=;
 h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
 b=Kiv+wprQoXOI55JIkEzkSiEaFr9gS3j7FKE1Sy91BR96//PoleU09LKMqx0LJ5VKCB625cZOYrXI9PIcau61JcdfSh60STrOjq0qgIMBjC2059yYuhB3jLOLVG1lWADYui1vTOJ8iviVuvN0s2ykHU3bH9ZwGubEJ90i5jL9xdhFed55EqPMtvQaJcJu7wwznFkumugLUvs7En85Ybw/KnHGAG1vP/8FLR2VQvBN7ZngasGFhfuKfPsSI2iN7P1BJZOkwDbuGe9hmjfII8d+eTD6dx8KfvAKcqOrJNnDXhhA+r04sfM28T+HlcG0eNyQZfLFOc/OUR3ejpvH67CdmQ==
X-YMail-OSG: 9FZcd74VM1nIsnhlS8k4XujrMNRf1tm5BWXhXDB8Y50igsqWYSobkypOn8FrM3q
 _hPfMuom8fVjihzlQCab0E2bPurfrZz_GSBhFUrQv54hTgazW7A9QcEozzE8Bv4VzN2wOJcPorcx
 NQOu4WuLC.XOkH6dSyFeMrxtr49_2b0sHnwQzs602nD9TdFeXhoAw8g_2cq9tSzI9Dtr5TxFqLPv
 N58LBY8zPILuFtTLs_AVwbyc6pkF.I6APGoxJKa59.e563qGsZi0KpQyS.oiZzTI_ut1UcOkjeEq
 GhkBwwI_X80cvyi6mPeHuaHEfhbLvqwe.puoJT1ST.V87NbbgK18R.OEOPzkPjL5IX5KouTDdqS7
 MGQeGNLPFx1tusGUDO1EjRPOZEzUQwjHLW_c.URdmC7xpzOHxMCHle7QEdzQNYiRMsygNWg6qkkf
 1g_vdmAFk..iwfHJlDj6YggUMr9y.hH1YpthB3FZnnzIWlGDw0ExNakQ0SqH2cXhWKte5CJ8cIFh
 4B_TqSveZ0wDoRK9gy7En8_9eftyeh3NRI_A4DlM4XaDvY6Qy0JmJ64Ehcip.YtdviOb3GNZcwx_
 edpc0gkdYpAuk7enZ1sncc1pN87Fclcm7irdaaU63XeK3C47t_3pZBfMr3F2G4WbHIq.7h4I68fZ
 pmCGRlzmmSluk9QsqxKyjv5e21JHCckNMq96ULDOdMj1sUN6IE4VPJtO8c6fmVrsx_9F8ZQsjR62
 YBU4cxj5QyuoGO7nuMnxLcR1pvEXm.0c0n5KmkR_smUFwRZr8vTFvyQrNQdNcqcynZ.HALYKfl47
 iFHWXiNh6ddGHhSPWnWhcADNXrWegcxpBTLIJSF98XZlH1ri.teIb0djfeEv7K1l9Vytvy5QrbGt
 RMdZjctj5L0OX10RCBSk3xhB3qY9gsM4pCuDCPrSl3_rlfUj8Ql.R9Aj9v2nzOMGxd_IL4YBa99r
 L6KwnWNJn6FrwbAjsbFgUMO2ql_Sw5IQREHZsTbtQY1X_T7oplSYBibjkVSh8Qypo5Cej4I3i4on
 JfI1DTsGoOtBZA6rqcAigMA8KroFnoDe6pZUPErAiYqFHhxoliRYnMcPJCAgPVqSm5cH0dGgobdD
 Z6glosu.vhnnISjsV7vYuO343DrGG.bCy1xHXsxMQJwZEEDDNFg0XrDYcJIPeIVwHveWJJD82pLD
 yBRqToFG1OyPiCL8CpX1q2fJYuOS39CsAoamXjF7Mp7by71A7nzNF_RJwU5EjSipSmDNkTa_oT0K
 wFprPzbfWdxPmsFlVc75F6DB4It2JEl9xRb0J0Wa9odsJgxtLzj6UKjth.eieUldQgz8g.FJga8A
 aV9bSdift_fqYcsGXbS2SFmOeH3q4NE45WtH5VCa7hbDhPYc8Jxhi3RKAsNpzV2IH7puodtqx2MW
 mPcyybNoje4lnkD6yxwVgzlgNDbh3.0Bi4UzB5qoFkjbkmHvMI7JuakBBCm.yJn.BcXHjz1pdpaj
 zayojCB0VOE.pil0xBT0kwQWRra5mNVuJI7YA5iOCdOrYugcEKLYNdnHOVdNjV.nSnBYfjs4tOPv
 0.fSK5DjyWm8eK8_hPz6ZFNVf.5BynwY6xgado5tbWWlNc_vJY1m7C_HeFrUhHMjhj9YBg1bmUIR
 .EA6QBQslhUwZXCjuaryQlDhZvbAXvsQ.JTYTjMSQcc3IgTaufqAvREHdANjgGkP3FCPI948YaE_
 MbwkO3E5y3PurbgJNGMOXo4LGVxNb4BWFIVc1w7yAPvx_vEBoPUF2EvvpNBwOTyoFNhdvcbPiSbH
 vkXAqcoNQHOlP5xdhSBcIs2I7rPKZ13oOyGsraJ9ULzapO9NWbHkLTZji84FsvMOW1IeMvq_YrE1
 o9Gh9yZCzirOgWbS1p7nBj.LIooDvTPrmv1vqIL.gRLODOg_3ja9TwL2i_FPXH6EBcFvTf2JZH.J
 c068T8niVYx0O.X17grb95y5PKLbTaeyYW8Nrd2Pmr77oLoa8_njRFcUEaSfQMAA1xrK50eOaMqK
 rB_w9oZL6pBd99T9sX_2QLnBp_dqaepGzNmZ.TwVzMsT51xfvz8WO8u66UFx3XkteK0fARQziNUi
 gPwIxGGisRqbveqtsACwVofSi7abZAU2Y5VPjFd_BUMLPTewNfpUX6AbYVLs9YQWbJs8qQIB9cHk
 O6hfKnnQGNL5X6.wg9lZ78AObU9trTk5xnyDoiFnQin3phl0NaIZHr.W9fQYK6w6BmPVk5MkdRPa
 O94129SQoL18H3Uw4x1E44jqXy3zmJL7Xv0JPIKyU0fVxZdC7MDjXj7FPlQ--
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Tue, 27 Sep 2022 23:37:59 +0000
Received: by hermes--production-bf1-759bcdd488-x5z77 (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 1ada386b527abdaae554e50e8733736f; 
 Tue, 27 Sep 2022 23:37:55 +0000 (UTC)
Message-ID: <6dcd0fe7-3fc6-9edc-349c-0133ab1f918a@schaufler-ca.com>
Date: Tue, 27 Sep 2022 16:37:51 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Paul Moore <paul@paul-moore.com>
References: <20220926140827.142806-1-brauner@kernel.org>
 <99173046-ab2e-14de-7252-50cac1f05d27@schaufler-ca.com>
 <20220927074101.GA17464@lst.de>
 <a0cf3efb-dea1-9cb0-2365-2bcc2ca1fdba@schaufler-ca.com>
 <CAHC9VhToUZici98r10UJOQhE48j-58hUheT0P8GE9nC38p=ijQ@mail.gmail.com>
From: Casey Schaufler <casey@schaufler-ca.com>
In-Reply-To: <CAHC9VhToUZici98r10UJOQhE48j-58hUheT0P8GE9nC38p=ijQ@mail.gmail.com>
X-Mailer: WebService/1.1.20702
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/27/2022 4:24 PM, Paul Moore wrote: > On Tue, Sep 27,
 2022 at 10:13 AM Casey Schaufler <casey@schaufler-ca.com> wrote: >> On
 9/27/2022
 12:41 AM, Christoph Hellwig wrote: >>> On Mon, Sep 26, 2022 a [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.187.39 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1odK9N-0000nP-Cw
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
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Seth Forshee <sforshee@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 9/27/2022 4:24 PM, Paul Moore wrote:
> On Tue, Sep 27, 2022 at 10:13 AM Casey Schaufler <casey@schaufler-ca.com> wrote:
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
> Let's take a step back and look not just at the LSM changes, but the
> patchset as a whole.  Forgive my paraphrasing, but what Christian is
> trying to do here is introduce a proper ACL API in the kernel to
> remove a lot of kludges, special-cases, etc. in the VFS layer,
> enabling better type checking, code abstractions, and all the nice
> things you get when you have nice APIs.  This is admirable work, even
> if it does result in some duplication at the LSM layer (and below).
>
> It is my opinion that the impact to the LSM, both at the LSM layer,
> and in the individual affected LSMs is not significant enough to
> outweigh the other advantages offered by this patchset.

Hey, in the end it's your call. I agree that cleaning up kludgy code
is inherently good. I'm willing to believe that putting further effort
into the patch set to make the LSM aspects cleaner isn't cost effective.
If everyone else thinks this is the right approach, I don't need to
question it further.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
