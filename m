Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C671FB1B7
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 15:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Exi859bgvU8Cinbz1fCZ2beg4VbUU0HPpdZuL87p3+g=; b=I3lhWIuddcpE7X
	DEm6cZta7iuFphgRqhumcRFvXcjxszfM/cavgkYRjEl9CqpOo1s2K7cSAoyEyiA13xlpEa0GTU0Vd
	L5Q80EeMjBDM09m2ly/XZWfh3kiarsaC9WHEGTDSFpupO3KOyw+Ap0X3yqkThCW2MaswWs1PD40WA
	djoe4VVulRxTGb7586gXsWWiCljoAKEOvezbK2rvjS6lkMvpEonRV2TIdCDifrigwAT5X7puIPhMm
	rxB7WOJjyVskp5u9jK/tFiWW00uwjkDMHvYJ+9uCCwqHPxaD06LChDymmDW5Rtr2jkQxDAmizk3q/
	kNOIZtkvYLahoakgzSbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBKl-00058r-1x; Tue, 16 Jun 2020 13:08:59 +0000
Received: from mailout2.w2.samsung.com ([211.189.100.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBK5-0004fH-MZ
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 13:08:20 +0000
Received: from uscas1p1.samsung.com (unknown [182.198.245.206])
 by mailout2.w2.samsung.com (KnoxPortal) with ESMTP id
 20200616130815usoutp0229d8c6848e8fd1a01f86a476b7071668~ZCCReuP8O1800518005usoutp02m;
 Tue, 16 Jun 2020 13:08:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w2.samsung.com
 20200616130815usoutp0229d8c6848e8fd1a01f86a476b7071668~ZCCReuP8O1800518005usoutp02m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592312895;
 bh=nxFJozWdYvZIfXiHOiXGoBYAH3CVoLKj7qA8wADUelE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From;
 b=PzPJL1Lhkhsxcs/Y0GWjYeshDMT72zuYU/bUT2aTST4ept+xKFB3Dp3vzBgGfcH1L
 kb0Na/JqCnjr20A9DPm/35QNhISvx2GhIQ/0N2KyuXTVgtkEKrQaKhxSgPW7l1iJZs
 fSBSxiTZ5RJrd1+fYWhGUo1jQmkA2ay/MUV4X+lk=
Received: from ussmges1new.samsung.com (u109.gpu85.samsung.co.kr
 [203.254.195.109]) by uscas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200616130815uscas1p2b6fc9e1f804ec3d2d7ff908afb623525~ZCCRXuvhV1765717657uscas1p2g;
 Tue, 16 Jun 2020 13:08:15 +0000 (GMT)
Received: from uscas1p2.samsung.com ( [182.198.245.207]) by
 ussmges1new.samsung.com (USCPEMTA) with SMTP id F4.F6.49736.F34C8EE5; Tue,
 16 Jun 2020 09:08:15 -0400 (EDT)
Received: from ussmgxs3new.samsung.com (u92.gpu85.samsung.co.kr
 [203.254.195.92]) by uscas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200616130815uscas1p1be34e5fceaa548eac31fb30790a689d4~ZCCRHIgki2299122991uscas1p1T;
 Tue, 16 Jun 2020 13:08:15 +0000 (GMT)
X-AuditID: cbfec36d-0d7ff7000002c248-b7-5ee8c43fb386
Received: from SSI-EX3.ssi.samsung.com ( [105.128.2.145]) by
 ussmgxs3new.samsung.com (USCPEXMTA) with SMTP id 07.1C.60206.E34C8EE5; Tue,
 16 Jun 2020 09:08:14 -0400 (EDT)
Received: from SSI-EX3.ssi.samsung.com (105.128.2.228) by
 SSI-EX3.ssi.samsung.com (105.128.2.228) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Tue, 16 Jun 2020 06:08:14 -0700
Received: from SSI-EX3.ssi.samsung.com ([fe80::8d80:5816:c578:8c36]) by
 SSI-EX3.ssi.samsung.com ([fe80::8d80:5816:c578:8c36%3]) with mapi id
 15.01.1713.004; Tue, 16 Jun 2020 06:08:14 -0700
From: Judy Brock <judy.brock@samsung.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>,
 =?iso-8859-1?Q?Javier_Gonz=E1lez?= <javier@javigon.com>,
 =?iso-8859-1?Q?Matias_Bj=F8rling?= <mb@lightnvm.io>
Subject: RE: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Topic: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Index: AQHWQ23O6HVrKIfYL0qwGW6H27y34ajbL4lA
Date: Tue, 16 Jun 2020 13:08:13 +0000
Message-ID: <4a97bb114ece452c80f08b96d6cbc11d@samsung.com>
In-Reply-To: <CY4PR04MB3751CC8FE4BDFC256F9E9CD1E79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [105.128.2.176]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMKsWRmVeSWpSXmKPExsWy7djX87r2R17EGWx4J2wxb626xczLPxgt
 Vt/tZ7Nobf/GZLG2vZvNYsKbo+wWK1cfZbLoPH2ByWLb/oNsFntvaVvMX/aU3WJC21dmixXb
 j7BYPPjzmN1i3ev3LA78HufvbWTxaF5wh8Xj8tlSj+6rPxg9Ni+p99h9s4HN4/MmOY/2A91M
 ARxRXDYpqTmZZalF+nYJXBnzbu1iL/hmWPH3Tn0D42fNLkYODgkBE4kNt5O6GLk4hARWMkqs
 /d3JBuG0Mkkc+vQGyOEEK/rROIcFIrGWUWLP2zlQVR8ZJbYtn8EO4RxglPjVewmshU1AU+Lo
 mSawFhGBOYwS35ceYgJxmAWaWSQunm5mAakSFrCW+DvtIjuILSJgIzF99j1mCNtIYv6ht6wg
 NouAqsTCF+fB6nkFrCT2n34CtoFTIFai5fk0sDijgJjE91NrmEBsZgFxiVtP5jNBHC4osWj2
 HmYIW0zi366HUA8pStz//pIdol5P4sbUKWwQtrbEsoWvmSF2CUqcnPmEBaJeUuLgihtg30gI
 vGWX+PuwDyrhItF94ziULS0xfc1lqKJdjBKT+04xQTjHGSUmnDjHCFFlLbHo6yqo1XwSf389
 YpzAqDwLyeWzkFw1C8lVs5BctYCRZRWjeGlxcW56arFhXmq5XnFibnFpXrpecn7uJkZg0jv9
 73DuDsYjp5MPMQpwMCrx8DYsfBEnxJpYVlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU
 4kOM0hwsSuK8Dx69jBUSSE8sSc1OTS1ILYLJMnFwSjUwylmmuhS574rWdioz4XFNPPbCc3X/
 6lVnJ6x3Up4tycbOdIrL+6m/K5Os+/l/XBEHX9Q95XbsFJSRXPh5gsGKUz+n9Ux4Es+1ievf
 lpi098fUzP9lLjl/NZ/j0BHxqTq6G4ptMlQ6tGRCLjybf+GwEoeS4wH+n5WFVxmuRFU/27/w
 5OIdYZO2KbEUZyQaajEXFScCAOWfaJp2AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCIsWRmVeSWpSXmKPExsWS2cA0UdfuyIs4g96dNhbz1qpbzLz8g9Fi
 9d1+NovW9m9MFmvbu9ksJrw5ym6xcvVRJovO0xeYLLbtP8hmsfeWtsX8ZU/ZLSa0fWW2WLH9
 CIvFgz+P2S3WvX7P4sDvcf7eRhaP5gV3WDwuny316L76g9Fj85J6j903G9g8Pm+S82g/0M0U
 wBHFZZOSmpNZllqkb5fAlTHv1i72gm+GFX/v1DcwftbsYuTkkBAwkfjROIeli5GLQ0hgNaPE
 gY7tjBDOR0aJrY82QWUOMEocOXyTHaSFTUBT4uiZJrCEiMAsRokFr+eAtTALNLNIdH99yAZS
 JSxgLfF32kWwDhEBG4nps+8xQ9hGEvMPvWUFsVkEVCUWvjjPAmLzClhJ7D/9hA1i3V5miUdL
 5oA1cArESrQ8nwZWxCggJvH91BomEJtZQFzi1pP5TBBfCEgs2XOeGcIWlXj5+B8rhK0ocf/7
 S3aIej2JG1OnsEHY2hLLFr5mhlgsKHFy5hMWiHpJiYMrbrBMYBSfhWTFLCTts5C0z0LSvoCR
 ZRWjeGlxcW56RbFxXmq5XnFibnFpXrpecn7uJkZgWjj973DMDsa7S5IPMQpwMCrx8DYsfBEn
 xJpYVlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8rRILooQE0hNLUrNT
 UwtSi2CyTBycUg2MCxdu5swRqZhsW9Lg4hHmnvS2oezUsg+LX29Z6vDuZGKIXU+cb14fe0Hw
 RSuLkOa5aep7k/LNZ93gUDjQ8uZ9v2/G4pZXn7b9cPu7SvrL1V87/t+ffq1LzW792a+T97QU
 ZwTIHdbhclL5r3OsRTdfUE3Tef8bm79N2ve0OrUuca+XiD1/9f5MJZbijERDLeai4kQASZdK
 bgcDAAA=
X-CMS-MailID: 20200616130815uscas1p1be34e5fceaa548eac31fb30790a689d4
CMS-TYPE: 301P
X-CMS-RootMailID: 20200616130815uscas1p1be34e5fceaa548eac31fb30790a689d4
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
 <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <d433450a-6e18-217c-d133-ea367d8936be@lightnvm.io>
 <20200616120018.en337lcs5y2jh5ne@mpHalley.local>
 <cf899cd9-c3de-7436-84d4-744c0988a6c9@lightnvm.io>
 <20200616122448.4e3slfghv4cojafq@mpHalley.local>
 <CY4PR04MB3751CC8FE4BDFC256F9E9CD1E79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <CGME20200616130815uscas1p1be34e5fceaa548eac31fb30790a689d4@uscas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_060818_108294_D331D809 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [211.189.100.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.189.100.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <Niklas.Cassel@wdc.com>,
 Ajay Joshi <Ajay.Joshi@wdc.com>, Sagi Grimberg <sagi@grimberg.me>,
 Keith Busch <Keith.Busch@wdc.com>, Dmitry Fomichev <Dmitry.Fomichev@wdc.com>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>, Christoph Hellwig <hch@lst.de>,
 Matias Bjorling <Matias.Bjorling@wdc.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


    "The on-going re-work of btrfs zone support for instance now relies 100=
% on zone append being supported.... So the approach is: mandate zone appen=
d support for ZNS devices.... To allow other ZNS drives, an emulation simil=
ar to SCSI can be implemented, ...  While on a HDD the  performance penalty=
 is minimal, it will likely be *significant* on a SSD."

Wow. Well as I said, I don't know much about Linux but it sounds like the o=
ngoing re-work of btrfs zone support mandating zone append should be revisi=
ted.

The reality is there will be flavors of ZNS drives in the market that do no=
t support Append.  As many of you know, the ZRWA technical proposal is well=
 under-way in NVMe ZNS WG.

Ensuring that the entire Linux zone support ecosystem deliberately locks th=
ese devices out / or at best consigns them to a severely performance-penali=
zed path, especially given the MULTIPLE statements that have been made in t=
he NVMe ZNS WG by multiple companies regarding the use cases for which Zone=
 Append is an absolute disaster (not my words), seems pretty darn inappropr=
iate.





-----Original Message-----
From: linux-nvme [mailto:linux-nvme-bounces@lists.infradead.org] On Behalf =
Of Damien Le Moal
Sent: Tuesday, June 16, 2020 5:36 AM
To: Javier Gonz=E1lez; Matias Bj=F8rling
Cc: Jens Axboe; Niklas Cassel; Ajay Joshi; Sagi Grimberg; Keith Busch; Dmit=
ry Fomichev; Aravind Ramesh; linux-nvme@lists.infradead.org; linux-block@vg=
er.kernel.org; Hans Holmberg; Christoph Hellwig; Matias Bjorling
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces

On 2020/06/16 21:24, Javier Gonz=E1lez wrote:
> On 16.06.2020 14:06, Matias Bj=F8rling wrote:
>> On 16/06/2020 14.00, Javier Gonz=E1lez wrote:
>>> On 16.06.2020 13:18, Matias Bj=F8rling wrote:
>>>> On 16/06/2020 12.41, Javier Gonz=E1lez wrote:
>>>>> On 16.06.2020 08:34, Keith Busch wrote:
>>>>>> Add support for NVM Express Zoned Namespaces (ZNS) Command Set defin=
ed
>>>>>> in NVM Express TP4053. Zoned namespaces are discovered based on their
>>>>>> Command Set Identifier reported in the namespaces Namespace
>>>>>> Identification Descriptor list. A successfully discovered Zoned
>>>>>> Namespace will be registered with the block layer as a host managed
>>>>>> zoned block device with Zone Append command support. A namespace that
>>>>>> does not support append is not supported by the driver.
>>>>>
>>>>> Why are we enforcing the append command? Append is optional on the
>>>>> current ZNS specification, so we should not make this mandatory in the
>>>>> implementation. See specifics below.
>>>
>>>>
>>>> There is already general support in the kernel for the zone append =

>>>> command. Feel free to submit patches to emulate the support. It is =

>>>> outside the scope of this patchset.
>>>>
>>>
>>> It is fine that the kernel supports append, but the ZNS specification
>>> does not impose the implementation for append, so the driver should not
>>> do that either.
>>>
>>> ZNS SSDs that choose to leave append as a non-implemented optional
>>> command should not rely on emulated SW support, specially when
>>> traditional writes work very fine for a large part of current ZNS use
>>> cases.
>>>
>>> Please, remove this virtual constraint.
>>
>> The Zone Append command is mandatory for zoned block devices. Please =

>> see https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lwn.net_Artic=
les_818709_&d=3DDwIFAw&c=3DJfeWlBa6VbDyTXraMENjy_b_0yKWuqQ4qY-FPhxK4x8w-Tfg=
RBDyeV4hVQQBEgL2&r=3DYJM_QPk2w1CRIo5NNBXnCXGzNnmIIfG_iTRs6chBf6s&m=3D-fIHWu=
FYU2GHiTJ2FuhTBgrypPIJW0FjLUWTaK4cH9c&s=3DkkJ8bJpiTjKS9PoobDPHTf11agXKNUpcw=
5AsIEyewZk&e=3D  for the background.
> =

> I do not see anywhere in the block layer that append is mandatory for
> zoned devices. Append is emulated on ZBC, but beyond that there is no
> mandatory bits. Please explain.

This is to allow a single write IO path for all types of zoned block device=
 for
higher layers, e.g file systems. The on-going re-work of btrfs zone support=
 for
instance now relies 100% on zone append being supported. That significantly
simplifies the file system support and more importantly remove the need for
locking around block allocation and BIO issuing, allowing to preserve a ful=
ly
asynchronous write path that can include workqueues for efficient CPU usage=
 of
things like encryption and compression. Without zone append, file system wo=
uld
either (1) have to reject these drives that do not support zone append, or =
(2)
implement 2 different write IO path (slower regular write and zone append).=
 None
of these options are ideal, to say the least.

So the approach is: mandate zone append support for ZNS devices. To allow o=
ther
ZNS drives, an emulation similar to SCSI can be implemented, with that emul=
ation
ideally combined to work for both types of drives if possible. And note that
this emulation would require the drive to be operated with mq-deadline to e=
nable
zone write locking for preserving write command order. While on a HDD the
performance penalty is minimal, it will likely be significant on a SSD.

> =

>> Please submitpatches if you want to have support for ZNS devices that
>> does not implement the Zone Append command. It is outside the scope
>> of this patchset.
> =

> That we will.
> =

> =

> _______________________________________________
> linux-nvme mailing list
> linux-nvme@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.infradead.org=
_mailman_listinfo_linux-2Dnvme&d=3DDwIFAw&c=3DJfeWlBa6VbDyTXraMENjy_b_0yKWu=
qQ4qY-FPhxK4x8w-TfgRBDyeV4hVQQBEgL2&r=3DYJM_QPk2w1CRIo5NNBXnCXGzNnmIIfG_iTR=
s6chBf6s&m=3D-fIHWuFYU2GHiTJ2FuhTBgrypPIJW0FjLUWTaK4cH9c&s=3DHeBnGkcBM5OqES=
kW8yYYi2KtvVwbdamrbd_X5PgGKBk&e=3D =

> =



-- =

Damien Le Moal
Western Digital Research

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.infradead.org_m=
ailman_listinfo_linux-2Dnvme&d=3DDwIFAw&c=3DJfeWlBa6VbDyTXraMENjy_b_0yKWuqQ=
4qY-FPhxK4x8w-TfgRBDyeV4hVQQBEgL2&r=3DYJM_QPk2w1CRIo5NNBXnCXGzNnmIIfG_iTRs6=
chBf6s&m=3D-fIHWuFYU2GHiTJ2FuhTBgrypPIJW0FjLUWTaK4cH9c&s=3DHeBnGkcBM5OqESkW=
8yYYi2KtvVwbdamrbd_X5PgGKBk&e=3D =


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
