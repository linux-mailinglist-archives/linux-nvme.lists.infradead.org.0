Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85478E550
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 09:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=9OY4yMujpQTrehCdwyGK5N2WUbeBL871qe7t5j/h0t0=; b=K/9bvZSbwMrKwd
	KVtbsCzimRultkVVqlK3U21hkXWCZz6K6aL6t2Yy6zWfSU17/L9fuQnixxb5cjzxZztFAB6cYb+HF
	ucypxBViaOvBhZGWm3ZlU4cDYY23ceYWOX6ierLX5OyY7y/2fkp0gRyckk161cwPpTSo5eyHaJ2Y4
	oCUj2EIZcMc4j+GY7Bu/K+ZG4NXMVz5PZFBjLUMDtEg4Ik1eDy+WoCg8E3Z6ZnnCBrIjcaOLXWi+c
	/czfG6ZSUenyfKd/LdoBsYYfFLlhYE/Jrcs072c6UhRJbxXmp3Xrn6d/G1kGysgs3kqyfwZawEsNu
	Psbc4DF8BVHYLy+CK1XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy9yr-0004T3-R4; Thu, 15 Aug 2019 07:15:29 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy9yb-0004Rk-OC
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 07:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565853313; x=1597389313;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=KUso+9Dk7rmh8SX4lRZBsSm3ZNgBtTM/Aj/A+mdWAQM=;
 b=bqgLSJ04rCOYBbWeGVJ1q1Hyfizxo9epGZJXX43wUHr5FRHvCp4ZCCBd
 GCY+vHMPZExMooQVPETPrdDFK32zzd7z7mgGAf5/tUUJRaUiGjciHbygV
 TSpWroq4vagLr8ly/VgInvob0NhakquxQLnqbpSIMRWlAB9yKoU5xCaBB
 GBlpYb/Ol+MDBIN6ETNzemH1EqOfaw7mvbcgtiSCgyC2NAFnrGyJv3o5C
 2Ro6E559LuQbEgrNllwBGeArrWNE/XnxKb1jMhhDsn9erk1XM0KtVvVWd
 vmbFQXoURl9Up5AN0W0XaSOnGv8gZGGBeoc3hOFLFNEFNNo9tpIE4v+BG A==;
IronPort-SDR: M8VARG8XJ26irO/lf3IBB/YadK1nmM/Z9UXsiFCvxF7gOjZLKx8alOBHEkoWO1cBzCiUcDzc4D
 V4bGYe18N2D4RAQPvPWskOORjzvthBCeVQrAiDcszQIW7w32HwnFazkUkRwt1mOl+skCETnNv1
 2dVsY3xESlxmkCae1pHoxFoaM3gTKd+QrszAdp0pZKOuMTP1kiSsvfdiiwQpq2oZ4sGcnhWd0O
 j0DHU6vN6LYxNmYvXVbEeKwmQQ/eJZB+uOIiRJ8NTHXozvPVFsRTHe/QJhzm+1RYrU3FjQNOWu
 2Dc=
X-IronPort-AV: E=Sophos;i="5.64,388,1559491200"; d="scan'208";a="222407499"
Received: from mail-bn3nam01lp2051.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.51])
 by ob1.hgst.iphmx.com with ESMTP; 15 Aug 2019 15:15:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npn2gcjlLaFHFkHD9im8t3WhHvaSrmkUSX3LOBTaBecxiGCBPhOMNqw7/6Ufq74GoFSgw0e4BTCrXo1ZXtrMSu7ObW2GkUrgm6ZJ7Ce2x5GqVcjsMymM6XWvZMEUq2aOlR/CfrQEaxzbqx5Hz2pFm2dU7WJI+3+Mw9pKdRpQc1LC4U0H8i95QPWIdUUAmsiz1cIAdA4MCjF3YOHVn8QkZipgAcwrGZJk2WWzP8Fgdd3bAwHeCzbRXdyUtqRuYXOALZEpiFlYFEWiZrY6KR1O49FJbfQGFjcntBkWG7cJB/LmJrsaxKYBO2+Y+TiYcP4HZ0SvlKQKNWuYOiJgrlwBFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yMBeA0esIsAZqqrINntbOGRh/TALDFkzapbLGKeUFSI=;
 b=I1rsL3S5Rj0ma0Gqx3bIXZU9iBac+t2lk15bWWGdpffzfjr+C0rDF7u2FaTu/VNp7+zbXKjggHKvjpxJ+3pCGru2GGVCuB8AsdASMZ9RF5/BC061Ylq4iggGvQg3W5+lckpHgd7eTtNX4wpSJb85pTf/ioFG/6DO5TVnJ5ekgtmjK2iagkPLzOPamG+UFjeELlnyO8gHrGV4FdnTGwAyYwnC0OQbqN8loZBIi7b1R5jeWqozSlBSktQRhxrXY1eDxozGOPtjD4KP7j590M/AYc2xgNAue6hdcem2Uzslg82BjMOjDW3cDAeGrhwkZz0jqYUzD/Y2lEUtEn5xsfrJGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yMBeA0esIsAZqqrINntbOGRh/TALDFkzapbLGKeUFSI=;
 b=cNsogJ/aaPZfOViwneycxAWovfmMzYL1ZCNBKDXKyDZ6cxupLz8D7CEWbWtsnIq00PCODbJIFBw18HBNA8eJcDMCsjbKFHPFoS61KeKdzQQa5ie9K0Tcg0lCc+Er/s/HlFuqF4FqTMhnHdgXcDbDuEGAtB19YN0OkU9Yk5z3KVs=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4407.namprd04.prod.outlook.com (20.176.252.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.23; Thu, 15 Aug 2019 07:15:04 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::b066:cbf8:77ef:67d7]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::b066:cbf8:77ef:67d7%5]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 07:15:04 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Subject: Re: [PATCH v7 04/14] nvmet: make nvmet_copy_ns_identifier() non-static
Thread-Topic: [PATCH v7 04/14] nvmet: make nvmet_copy_ns_identifier()
 non-static
Thread-Index: AQHVSMM4pgNQfVl62kW+URoU596DzA==
Date: Thu, 15 Aug 2019 07:15:04 +0000
Message-ID: <BYAPR04MB5749D194F4AD68F5A8CF0D5E86AC0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-5-logang@deltatee.com>
 <43951ad9-873b-5bbe-b627-0ad4610fbb11@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51c98259-0cc6-49d4-088f-08d721504b6e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4407; 
x-ms-traffictypediagnostic: BYAPR04MB4407:
x-microsoft-antispam-prvs: <BYAPR04MB440738ECCFE4479030B8B00886AC0@BYAPR04MB4407.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:178;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(346002)(376002)(39860400002)(136003)(189003)(199004)(2201001)(2906002)(229853002)(64756008)(66446008)(76116006)(52536014)(66946007)(66066001)(66476007)(66556008)(2501003)(53936002)(25786009)(4326008)(54906003)(99286004)(110136005)(316002)(256004)(486006)(6246003)(476003)(5660300002)(186003)(7696005)(86362001)(71190400001)(33656002)(446003)(8676002)(71200400001)(8936002)(81156014)(7416002)(478600001)(81166006)(76176011)(74316002)(3846002)(6116002)(53546011)(6506007)(14454004)(305945005)(102836004)(26005)(6436002)(55016002)(7736002)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4407;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lwjNeF/uT/1JpqBqZ4VE6pOuXQbshGpNAZPerp+tQO7MeUBXisXvno3NadTBaT+udQq1Y+Ckd+iNFihIzolg8mcdp3cFqME37y1YNQDdcJUmA3YTVIlsQNnZ+i0mBeW3BCjgfVtUSc+70i6PuHwrqDSfr3aGwNodM72JLU+7SJ7zG/iAScqJNjTiNJQpVGAJUKiUoCzIh0e4Z571cgZoLr1Ev0Su+bCAlLno6DL7oV9NMdOqqG6VOY8XYgBNAPv9hL0WhV3/9I3OvE39CPOo6hch7NLsjXFKq4A4geg+Nnuryh13Ca1NIEyZBdxCl0jo8zk5DOgUdO/xRKDIorpMVcWgq1RGlm9d7KQKV8wTpJ7aXjs7iyXZKHh1H6KniWCXpZcDEaiqJyTKu+OTrBgmPiGFjal26Hfyyf+44PQwPTA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51c98259-0cc6-49d4-088f-08d721504b6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 07:15:04.0838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qx6YQQH+tenS4yDfC4NGeCoDuobMNldYnG2oh0j3w0L0XeWY2qYV1e0HUwigvuuXJZbsTR5froCT0hjGCckZs4XE1sR/yf3VLGxY1mPWfso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4407
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_001513_907180_32E0F445 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Stephen Bates <sbates@raithlin.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/14/19 7:30 AM, Max Gurtovoy wrote:
> 
> On 8/2/2019 2:45 AM, Logan Gunthorpe wrote:
>> This function will be needed by the upcoming passthru code.
> 
> Same here. As a standalone commit I can't take a lot from here.
> 
> Maybe should be squashed ?

This commit changes the existing code which is independent of the
passthru code which we are adding. For that reason I've made this
standalone as it doesn't have direct modification from w.r.t passthru 
code.

Perhaps more documentation will make this clear.

> 
> 
>>
>> [chaitanya.kulkarni@wdc.com: this was factored out of a patch
>>    originally authored by Chaitanya]
>> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>> ---
>>    drivers/nvme/target/admin-cmd.c | 4 ++--
>>    drivers/nvme/target/nvmet.h     | 2 ++
>>    2 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
>> index 4dc12ea52f23..eeb24f606d00 100644
>> --- a/drivers/nvme/target/admin-cmd.c
>> +++ b/drivers/nvme/target/admin-cmd.c
>> @@ -506,8 +506,8 @@ static void nvmet_execute_identify_nslist(struct nvmet_req *req)
>>    	nvmet_req_complete(req, status);
>>    }
>>    
>> -static u16 nvmet_copy_ns_identifier(struct nvmet_req *req, u8 type, u8 len,
>> -				    void *id, off_t *off)
>> +u16 nvmet_copy_ns_identifier(struct nvmet_req *req, u8 type, u8 len,
>> +			     void *id, off_t *off)
>>    {
>>    	struct nvme_ns_id_desc desc = {
>>    		.nidt = type,
>> diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
>> index 217a787952e8..d1a0a3190a24 100644
>> --- a/drivers/nvme/target/nvmet.h
>> +++ b/drivers/nvme/target/nvmet.h
>> @@ -489,6 +489,8 @@ u16 nvmet_bdev_flush(struct nvmet_req *req);
>>    u16 nvmet_file_flush(struct nvmet_req *req);
>>    void nvmet_ns_changed(struct nvmet_subsys *subsys, u32 nsid);
>>    
>> +u16 nvmet_copy_ns_identifier(struct nvmet_req *req, u8 type, u8 len,
>> +			     void *id, off_t *off);
>>    static inline u32 nvmet_rw_len(struct nvmet_req *req)
>>    {
>>    	return ((u32)le16_to_cpu(req->cmd->rw.length) + 1) <<
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
