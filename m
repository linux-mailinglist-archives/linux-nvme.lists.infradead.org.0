Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4338F179DA5
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 02:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=KX+eGC2BiM5du76AFqIpI0yMVqIhX/nMgjyaERmdG9M=; b=uHcsEeORvj5Hj3
	6LqT27WXZEvM48vt8+deLH68pEUy1vI5+/5fuU1ngPbhmA4eEWbaeXK9q3uwlpTNIWvOCq55ouktH
	1PjuyPbGm02kB6m88KGrgqURR4fPbEnOMQfZJ6DzctwGFkpkwxUgn2053AABVKK7SvryNras0nctY
	ePeYQD2Tm07zYkfTBo75kAFigqfqI5RI+TlbB77aOFD3MCcRXNnItO9Ds2BDm0R7D1oJidR3JwnEw
	sS8H5XDQOPMmoiD9UUnPP65dMzoSuO9Je1sFj+ANo9uMcrQP2sUVOB7GLvVu2XGgJogA5ql4cZIwU
	41q48ox0A//0yigABdDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9fjr-00009u-CL; Thu, 05 Mar 2020 01:55:51 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9fjm-000095-NS
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 01:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583373351; x=1614909351;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=iMmWTI7ZTIOCfPjo9tr3Crvd6PsV++FDzVou/J8g370=;
 b=TZXOXVd0SWuZxp9v3QdNH1Jzt3ByzXAdVD/BliJErpyTkUOd1tMKOFaV
 C2W2Pd2jy77yTO0npo1/RlkqSDKcDPs5JiXH8083R/pySC6p76TlQdJFg
 cqW4RTQHxl9xFDdcPQ+Y85+kjyXOU4vpjwf1H00N8yYUmpnPFXALMemtH
 wPrnEIaxuxZJY2Aptfs2j/dRHOwoG/82jYMTkGgZytUP9L2jUxKPTK/cO
 KJFk4oHe+HyHTaMbhyOTvlL/ekGD++c4uZ2twO2+o4iWPtATz7JFJIFQm
 UEGoN1uJPjtlzwfIjOWrVnpZjivz2XCgeCBd/RuaUNhcNdhcv9vVjdvMV Q==;
IronPort-SDR: Tx3jjGXNQ4hmlkNvf+kKNjPkziaGxfKonO3VhalQQpEj1touO0T7HV4kOC+UwYlHMGhoQWvK6b
 +G3kpHpDvMEhjebDWUtHps03ZHJ8AN9oMEQxb7EpIPfMc0r5+SuUJV+YDkoa2dx0GuHoA1bDqX
 Y4+hfmme3Bcox2keusCkDSyq1nOs8VmXLeT/jh678bnHfomujVicUvXtXjEeknr+Uql6UObPLV
 lCTuxjmIKGUxyqi2hu2DnuOFYJfNIMC08k4Uq6xX3mu036V9IdIMvYL4SnjXHh6RdKbcq9G3u9
 QcA=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.70,516,1574092800"; d="scan'208";a="233479560"
Received: from mail-bn8nam11lp2171.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.171])
 by ob1.hgst.iphmx.com with ESMTP; 05 Mar 2020 09:55:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mW8zEaRkjKH/8pCXMJPMXFv4F+96Rqd1iFDL+UDvixn3mX1Y6CezxFceW4l/7Gh8GUyzZBhsR7tPvf7vrkT70KG1gt7n0+0AikK/ZcAZBeRu6UkzwvMsXwh3SSXFSCI8tk6S/ybuCsYIxH/hoYWjHwSGtBBAJkrl9rzbYPjfgUJaCCQtd6VEA6vnjAM40+L0DmTTVMfTnesDPZnxtAFT+Gvd+57qdPBu0p5yuI2jVcifZWybxibJzmCzND++9XfFcH19Yv4UIU8Qv8+3V9OcImbkSkcnJo4Z1ToyCPsHoR/U7e1vd85P/wH91ZZGlQiFBeZkOyF7ueGUmnzGJOJsOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CnlRr+MFcMrIcaL2v1345SWBHDUZzZ9xSEQ40ZT0Nr8=;
 b=h01vJJIuAP4xpOWQ8TM9you+u/aDeAQE99AP8g6UM5J/+Qpvrbo0/dtsTKoPExB1Y72gcvwkAdR4aWaZb4/wdwnvyvoZMh9l3kr/pcsnV/Yfm90svkzzI+GaWZcsyQ3wPjuFVISnqhiqTzSqPjgKTw+KZ0FDnMftg0tn/mLyHMQfJy2bcPgdTg9s5hqcTeog2w+y2XTZY/Ah9Yls/Gch8o1mkPpTsqMPiwER/1MkzqnLULGAm/01miv6P4FTr6Q5+lmeetYGQhIPsjvNPFd/7EKgVJxFM4Dr06XRO7GB0ZHfDS/VejMCHX0iHOjIC3P5MhC24tiVUoInfOBRLxc6VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CnlRr+MFcMrIcaL2v1345SWBHDUZzZ9xSEQ40ZT0Nr8=;
 b=AXjcDR3JvvZPkAacenrQNKbrfYtf4v7j3n3Jt5bTZddpUPasQbUWGmMJV/lrJuKOnUTKGb/9huItsZt53ragE057vadIvmI0DzBOkPxalKS8icS1G7TTjwgyw81yK5cTsL2Zug6ks9aZf+21CCNnNqwDaDU3wbONFlnbntqdq8k=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (2603:10b6:a03:106::21)
 by BYAPR04MB4456.namprd04.prod.outlook.com (2603:10b6:a03:55::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Thu, 5 Mar
 2020 01:55:34 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fdf8:bd6f:b33d:c2df]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fdf8:bd6f:b33d:c2df%3]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 01:55:34 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Omar Sandoval <osandov@osandov.com>
Subject: Re: [PATCH blktests V2 2/3] nvme: test target cntlid min cntlid max
Thread-Topic: [PATCH blktests V2 2/3] nvme: test target cntlid min cntlid max
Thread-Index: AQHV46CnUYWA/RKS506wmXbMEL7y+g==
Date: Thu, 5 Mar 2020 01:55:34 +0000
Message-ID: <BYAPR04MB5749175ACC439858A47FB6F686E20@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20200215013831.6715-1-chaitanya.kulkarni@wdc.com>
 <20200215013831.6715-3-chaitanya.kulkarni@wdc.com>
 <20200305013010.GA293405@vader>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2817a18d-2356-4aed-d93d-08d7c0a84b57
x-ms-traffictypediagnostic: BYAPR04MB4456:
x-microsoft-antispam-prvs: <BYAPR04MB44562AAA24865D10FCB08C1886E20@BYAPR04MB4456.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03333C607F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10019020)(4636009)(136003)(39860400002)(366004)(396003)(346002)(376002)(189003)(199004)(9686003)(86362001)(64756008)(55016002)(81166006)(8936002)(478600001)(316002)(4326008)(66556008)(6916009)(5660300002)(33656002)(71200400001)(54906003)(8676002)(81156014)(66476007)(66446008)(26005)(7696005)(66946007)(2906002)(186003)(6506007)(76116006)(53546011)(52536014)(4744005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4456;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LH/c/TTrU5Y+A/HWfp3JQkLK358DPye5VMOWYOaJxjnYkOOoQR7f6SUe0QR6xwk0jL37N2wXrYpLnouGEqXl2st0lad+Nym4bkIjy4ToGSLas4eg0XX75JMFvDUSoMhNTTxNcYk+GL2YstLkLarqhOKC0ASLKZDjrDoA9qKHLip56fk/9bcTGQqaVEHXw+Y1LT/dpcPrvpKYsKNrYPzA4Hw84ml7F7r2/n8SPKhOuSt/bMqlPEtdAqknBRsBaKYBbZcT9dwSs98y7mbKVMUQ8LSL2UPtcvuXFjxQfCLb5paqB/rPK8fhcEHckJf2ydEniZUefQfLsRRBU2DVIJ/fIGpezQaVjOTThniaRf4iuRpqFtzV9VMFYQnJZAOFquUtyiFlh85BK+r0v9YGhilQQzrPQaqaTLeeoheB8GvsuxnoI29xYlOST16loiLoRGoDidyLK97FHQMJCqynOOm96q376U3CIt1NaRHqDfSPTIAOIgjHKtRuiKOgSKrZJrpSMHGa857rYBYnZ2kUDSE3nJjF7qNQQlKBwbUjsnELnqsRDUpase1JqhOai8iMttK0GJ7/PNMdb2MFKhGaGkZXVw==
x-ms-exchange-antispam-messagedata: wwzkYWikQPRwmvPm4lXO2XcDZ5bJIgKr8kjtmtFM3pH+0z0hBbJRDdyMgWwIkJL0Io5EDtVhRiLyKPyn9MQJHZJXRfj8YkXFTEBv3fJ6tqfxXhN5zPYTlvNAojyX7sX6GXfyIG0nNmR4vRckmLPAcw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2817a18d-2356-4aed-d93d-08d7c0a84b57
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2020 01:55:34.5632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mIqoeiPsVHUQr/E4CoNqHq8RxTl9+OrdPaQuGIScKbuRq3K8uksCAD0EyLbbpK359ZJ2/N1WpsOR8L5dawCXjDcAHZ2pwDdIom72K1won5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4456
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_175546_804492_C4CEB43A 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "osandov@fb.com" <osandov@fb.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 03/04/2020 05:30 PM, Omar Sandoval wrote:
>> +	 _create_nvmet_subsystem "${SUBSYS_NAME}" "${LOOP_DEV}" \
>> >+		"91fdba0d-f87b-4c25-b80f-db7be1418b9e" ${cid_min} ${cid_max}
>> >+}
> Sorry, I wasn't ignoring these patches, they just made me realize that
> we really do need a way to skip a test from the test function itself, so
> I wanted to implement that first. Could you try rebasing on my skip-test
> branch (https://github.com/osandov/blktests/tree/skip-test) and
> reworking this so you don't have to split the setup between requires()
> and test()?
>

Sure, thanks for adding this, will send an updated series.

>> >


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
