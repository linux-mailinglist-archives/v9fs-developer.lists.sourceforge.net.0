Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C1F4C8393
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Mar 2022 06:54:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOvSx-0003Jk-Dr; Tue, 01 Mar 2022 05:54:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dan.carpenter@oracle.com>)
 id 1nOvSu-0003JD-Ki; Tue, 01 Mar 2022 05:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aZCvnIYHE8JMwzWHBnvAkTMzbTJeEGOE71a9D+oKdj8=; b=Iwkjo/N1Ui5+6C4z/cRDOpcjgt
 Skxe6H02dif4Doh+4N8x1Tr0Jy0kxY8/sfSXsHmIdbhMmmKu7EOSFu7WD4pY/5RKjRpR8U8e5y1iJ
 m2ut+CzrXfPskG6yZInd6+aT99t48mzyKtVb9FYAYvWgAD1FGT1j3DJ6pgSf9iP9mrE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aZCvnIYHE8JMwzWHBnvAkTMzbTJeEGOE71a9D+oKdj8=; b=fwhlDSX5MQ+WfBgM07jXQTF6lh
 feOJry/pCoTEvBu/LhtZ+B3yRl4ksRGXLclo552aGtJ5D/Tlqx5Mt+V8Ap2sOARUkJ8zh9pGfZoGS
 XU4V66TycKtSRYz2xPHL4MX9esvKV9iwqB4Qsox2qWuooONZeQCmUiBQsYg7qwzPZqoU=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nOvSq-000qzY-OJ; Tue, 01 Mar 2022 05:54:27 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 2213QZQr024691; 
 Tue, 1 Mar 2022 05:53:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=aZCvnIYHE8JMwzWHBnvAkTMzbTJeEGOE71a9D+oKdj8=;
 b=uLwvDX28g+RhMO1TnspnflfrF9B2bB8E4REmNzTOSOnhe+BvZMoFkSwvAnRivHmaQOZV
 xdZIrbiFI1mLDJjOO+WObKrhajjMPyn34jtznm+PcNxrGvn536LLgYKw6/YwTNl8yYH4
 TfZspQAdSDmittfsCWO0dftmXG5EQAXln+P7KI1wj0R0F1Eo+8dzaLrwoGIFy7NocVnl
 zrqAXwi5jFwh1FrVH7PMT2iRMWDI22eSGmy2Cy/35o5e435HoD1cAC07D9MklICwwkaQ
 KfHw6T5YLL/GBcsRVMugQhDZ9JS2WGPzdSmIBBwRQUc72KKNBkG1Zg9hOXuPBiSlT6we Tg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3ehbk9866h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Mar 2022 05:53:15 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 2215amqI000723;
 Tue, 1 Mar 2022 05:53:14 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2177.outbound.protection.outlook.com [104.47.56.177])
 by aserp3020.oracle.com with ESMTP id 3efc13sxjf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Mar 2022 05:53:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SSe0jOaT6wwqHjG2yeUJ1Eie1nUuba4Tna/oV6Ckyd4MLjk0IWFb+i5CTzfzDBpViygsVhsAJjR2qv0Sp/SzoEJt+SF1LElWgFjfTCh0DfcBhsf/wPL/4OE1x2tRvL6pnpmqbHetmfDvxfobbB0hKfylmfso4G0P7A7xp5MI/bl3U7jYr+YEcnByJroE8fRmJtP6SI9qK+nkJTZQVDfT7mOFYW4ngxnoKeneB3u2G+3187cKwnThTrNtNCEt75BizKh73Xfr+MlUYXUqX2Jvmrl8HA/95YiQlDDJ2ha2V+BRGp6pYFN11PxlaJdlFfe3e7n/u0BJ5BjSKLjh2151Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aZCvnIYHE8JMwzWHBnvAkTMzbTJeEGOE71a9D+oKdj8=;
 b=EvV0Zy+bW9rP8zEPRNg75K0D5rMu0pBEXpf3i5V8Gm44m880ksauiGDBW73gpRLLrmi+dDI1aG1iEE+5lmY2wBRVNHCWRKImkBsULLkRNYRGYE/FlJW1QMP1+uSWne0mQOQG1dyu1VnaEITb0m24nHOlTW7qLAsdC7gbfxtNSoJBO0cZgYLxqSC1pSgjof667zdOIk9ACOOnpBYaqlBsppb6NfpxKfshvSlgOZt6+HInklBqMvgl6e9DsYvTRFwuClUndVKYqg1u/IrfY7dtaXWcy04u3YIQ273tRLqj+5KgulbtanR+v7IFE44O8gSdwUM43CYLeGofZpFWYr5XlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aZCvnIYHE8JMwzWHBnvAkTMzbTJeEGOE71a9D+oKdj8=;
 b=Dbbf4FKtSfC13/FdIgguVp6E/eW5+/iY8Op3SpabZa/BL3dzLqTBc9xfhuLp9kZ468+IvRAmC7Pj9gdjhJaLdZEYk40fJw5GHU2fRxlxDPnJ1nLyrDBWY6n159Z9akT2fAsqMrgM4cJJHQoaYhjkpac157Z6iZUXYonKjEuxKNs=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by PH0PR10MB4533.namprd10.prod.outlook.com
 (2603:10b6:510:39::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.23; Tue, 1 Mar
 2022 05:53:11 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::2c3d:92b5:42b3:c1c5%4]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 05:53:10 +0000
Date: Tue, 1 Mar 2022 08:52:31 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20220301055231.GI2812@kadam>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-2-jakobkoschel@gmail.com>
 <20220228112413.GA2812@kadam>
 <0be9de3920442df490f01b6fb1c42521c3de6190.camel@perches.com>
Content-Disposition: inline
In-Reply-To: <0be9de3920442df490f01b6fb1c42521c3de6190.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: CT2P275CA0038.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:100:a::26) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f00bd6dc-d76c-4bf7-86ca-08d9fb47c40f
X-MS-TrafficTypeDiagnostic: PH0PR10MB4533:EE_
X-Microsoft-Antispam-PRVS: <PH0PR10MB45336ABFCDF312DB98F2AE608E029@PH0PR10MB4533.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G2x+t26wSuTDDkq5o4q7dbW4/UjzD3hW6M5tuxN3cE9Ky9PRtHnitbQRwuVildDloArCtPWngk4gSsu2J/fQ1Yg7oEb/EDYZPN4hKOG7qZjkOXxG5P7QScLppmuJjx+iRUvRSdNc++RCkzB00ZstVPzvo2uA97a94UXPnBMXuj29Q8DLxo4w4cR+L5FYhAEoXORyrzlEng+TFzLzMDCkGR8iTfh9dT+LhiI9ZxGrIsMsuvjhSFlMnXwhyv3ryp99PKiK2eOXjxSoYxIydBdXDy6CYe2WGe+BRAPFcJTjiAsEGE0aKaMhAz8xEkejdm4oa/Bs6dr6HUqm0kFoXPW7E0KL/IsCU1+Nbfk1UNIUSPqGhrqvfvzS6WPiiolWtALU5nn7rg1yVKAte4zF2FUTVoeog8mMJQchv7t5XzlOetD2/h//JB/WFS3HxqR1BmSAnqxmiDFqzgiUIeHot/VQWVa8e/lOW+usUgBYH7akTOk1d/UbmcTrs06sSNHp7YA9XhLvVHsSHzqOJzwu6sM999sl3EUPiOqOK2dgp8uE/VPSaOPnBt4s0sYroeoytfrA093GhdFDswl/nyfYtlw13WUItyPieJ9Wh4ui7AfWP2A/S3WdVMDcMoqeVcIS4mj6eTAy2ZdsN46S/07W0NdfYiGebfCMs/eXnmJljIv3aeWJYhrMTm930JqyPq3eTHwA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(4744005)(44832011)(6506007)(316002)(33716001)(7406005)(6916009)(6666004)(8936002)(54906003)(86362001)(52116002)(66556008)(66476007)(66946007)(6512007)(33656002)(9686003)(8676002)(6486002)(508600001)(2906002)(1076003)(26005)(186003)(7366002)(4326008)(38350700002)(38100700002)(5660300002)(7416002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4IvDCtl5VM5rcP0Skuq04PLt/9msaa8KrgRc5DZjGXsPhA9y4iJD88IBEQ1c?=
 =?us-ascii?Q?5NlEFNIcsvnz9BinB/mgAkczuiQ215LgILS+oP8xbCLw3Z5P8AhLO1KPD4wd?=
 =?us-ascii?Q?dUYAfATfNveCiClhAExDGcXu1vqHxF0cBcSMhyo1jII5XE9OWZoDTCKHtW6w?=
 =?us-ascii?Q?CFJ4fhH/Fy0pCAeZsouRcbdAyjLHlrhUwCbIX9PadaSdTcnVMqesGvuxgr3d?=
 =?us-ascii?Q?hC75pQ0koF7QtkaYc72EswV5NZ9j7FsZ6PMgEUn9BL7KStD6UmhWBgt67eY/?=
 =?us-ascii?Q?9Yd77VvL3i+hZ/rHLbQsh0G8SWHoBJtac4ylVeaRMKOYJ7U7C4H7jdy3mbHL?=
 =?us-ascii?Q?LA+NSHBWuze+IuI1swbSTBFcwgz/WQcp/plyNQhxeF4UGJzK6Am/zcwas6Mb?=
 =?us-ascii?Q?BvixPxIPDopJH6kgHoRXPYMUDpqy0NFviNqOzU2uDB+OzW7mt8VLMXCgShQx?=
 =?us-ascii?Q?dumf9Hh4CjFQL8zAUaJhrxRx6juz8Cvyjou0C2LfXRzJvnYDsBs3YidywzHI?=
 =?us-ascii?Q?z7APDKEhaxiNh5aHtdCmurO3Nh0S93wPKYeKijEFOvmJCNn5ENvDsRz8h5m2?=
 =?us-ascii?Q?XfgtNwJFiw0FKCGRGyMjLGlkDw5Z7U3FLsk5OrUB5Xo78w+E5Tz6b16m6DHj?=
 =?us-ascii?Q?bFfxM2xveRZjeFbu8TCQcCAzuS8Wq6qkmETePfOoe0KLCN//mNekgvWmHSkw?=
 =?us-ascii?Q?Km7b4FQuWHYE0OYf6V9CQYbNLYNqtkCNYgUocYFlSaJb0TCFy38gertqTVFg?=
 =?us-ascii?Q?3j6Xvbc4PI9BQJ55gqjyF018IRMPwH4OFdjaB+I3VJDFp+MWSJyBcx6quuxK?=
 =?us-ascii?Q?TNVWOUZb8na8LSkT3Ts8oNMSyDjGRu6cM66iNEIOPphYRUWJ5vnJvqStxZ+J?=
 =?us-ascii?Q?rOoeqvgCCrmQXc3iVUJih3eWUtEPxvcC9cuFN2WJszS39zOTkLbW0lNCpss/?=
 =?us-ascii?Q?UiTcmCvYiA846OQB/82ioH25a5wURPUY5Gk6tcZQKbvQF2QSm4W8mEl0qMd9?=
 =?us-ascii?Q?dvwtMIf2UTyDDy9hvv0AnAeopFT+l+GJu1gYxMsIzbYCTjDtydjCr8NbS0+p?=
 =?us-ascii?Q?MsggsisVU8DVl7AwTV7qwaLf6m9DeqEU6lwBNO+3mE23mo9Vuhx+1kATyxgv?=
 =?us-ascii?Q?BM95B7XfndX+325MFt1wEDMBPrgQ+fgnBsBXxALYHlS4/rkd/MceSPJEGrwK?=
 =?us-ascii?Q?WQYbjDgt/t2RpV9z2C40TzZp3jFpkyBCt7g7Vufq9wLNNY0x2H3AVQQvUSo+?=
 =?us-ascii?Q?h0f9KsCB0CKiep1vFz0U7aq8+waWIK7GZOlgJcIOJHOS5NWG4jMb5Lxf2ISm?=
 =?us-ascii?Q?J7zq+23uZrZ1Wix8nRxbFxCej7mwuEgcX6BccuAvA1Hat2WPXVIgsyIZHOUu?=
 =?us-ascii?Q?G2oJdd3yFHfVfUzDutAE9P/fdF82VTo8JgyV9kydaT68/rQZKREIGW2YHoyV?=
 =?us-ascii?Q?nzuOchXYtl7AbU54KCN6/QLAp7gb5GtqGa0ft4+OO3b5qCISc3Dzwv/ckEqJ?=
 =?us-ascii?Q?j3kpuVuZGFcv2qd8z6IKmuC6ezfYglOMY9ZVI++aIsIELDpVuolntfe0fyMG?=
 =?us-ascii?Q?aXl3xdbSxonrnMA4DJF41RcXnV2SAVsfcBmG/Bq95pmkZjXOmb5Hpo3Xs+R+?=
 =?us-ascii?Q?FgQ9YbTSVBtx3emhgqmaM5eLloVjjXBpGs9Mr2bGJ5t5kwIC2hcy5ccEFGfA?=
 =?us-ascii?Q?0xxlvA=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f00bd6dc-d76c-4bf7-86ca-08d9fb47c40f
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2022 05:53:10.6487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aEWUTcysPwoFeIZPleBXa/PNJnNLmuAC5LuxoVYyUGkAGrPdM28HZ3zTODvsT2Hs+dTwsQzEnxTFSLDh+VD98ov86BVdCluK+h5G3DARlTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4533
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10272
 signatures=684655
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 mlxlogscore=797
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2203010026
X-Proofpoint-GUID: s6lqY5W_YHP5ZxEcmRqtLbN7O5lZR1y7
X-Proofpoint-ORIG-GUID: s6lqY5W_YHP5ZxEcmRqtLbN7O5lZR1y7
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 28, 2022 at 10:20:28AM -0800, Joe Perches wrote:
 > On Mon, 2022-02-28 at 14:24 +0300, Dan Carpenter wrote: > > > a multi-line
 indent gets curly braces for readability even though > > it's [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nOvSq-000qzY-OJ
Subject: Re: [V9fs-developer] [PATCH 1/6] drivers: usb: remove usage of list
 iterator past the loop body
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
Cc: alsa-devel@alsa-project.org, linux-aspeed@lists.ozlabs.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-iio@vger.kernel.org,
 nouveau@lists.freedesktop.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel@lists.freedesktop.org, Cristiano Giuffrida <c.giuffrida@vu.nl>,
 amd-gfx@lists.freedesktop.org, samba-technical@lists.samba.org,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, linux-cifs@vger.kernel.org,
 kvm@vger.kernel.org, linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-staging@lists.linux.dev, "Bos, H.J." <h.j.bos@vu.nl>,
 Jason Gunthorpe <jgg@ziepe.ca>, intel-wired-lan@lists.osuosl.org,
 kgdb-bugreport@lists.sourceforge.net, bcm-kernel-feedback-list@broadcom.com,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergman <arnd@arndb.de>, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-sgx@vger.kernel.org,
 linux-block@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 netdev@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 28, 2022 at 10:20:28AM -0800, Joe Perches wrote:
> On Mon, 2022-02-28 at 14:24 +0300, Dan Carpenter wrote:
> 
> > a multi-line indent gets curly braces for readability even though
> > it's not required by C.  And then both sides would get curly braces.
> 
> That's more your personal preference than a coding style guideline.
> 

It's a USB patch.  I thought Greg prefered it that way.  Greg has some
specific style things which he likes and I have adopted and some I
pretend not to see.

regards,
dan carpenter


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
