Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5436A174A78
	for <lists+linux-nvme@lfdr.de>; Sun,  1 Mar 2020 01:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=CHbIr50uItniOyNV+EXV5WOc3zrNa54wdjFWdrcmINE=; b=MR4kqT6U2zc/tS
	6YBsYHIZlVUO+1FTv3W+f0E0G09dKIkUTaJ7Hm7QULsCgdHxVgTuD82mNwkkHmJe6ngR95HqRsTdl
	dLF38hF5D+UFT7luAdl99KJF0BPjc8b+UWmxvlzwlmsmZaRSdNgsqJSr29KRrj2KJq1OKDyOmuW9A
	WSPzzylJUDrwlT751RUhFUmQvilZ3bCL0ai3xtHcqnYi6msVQc9MUy4Oqcv4JgDh/gS/7faPbjFzO
	Okuo/pFqihrkfje9xtowAtPL+e+YVxKpI2qtyK4VhiwlYISKNneBqyNX3jpQ68JKKvT6+6xYsMdzG
	SySJLCYkBBsnYuFA3VmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8CUu-0006kU-0k; Sun, 01 Mar 2020 00:30:20 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8CUn-0006kA-6v
 for linux-nvme@lists.infradead.org; Sun, 01 Mar 2020 00:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583022613; x=1614558613;
 h=from:to:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=NdoUTTlDU4QBKxX5BcqiJt1Q1GnB4KQXYaXqMhPE7yI=;
 b=qbO/W/dc160wnoDvYgeW67kMO3RTkveHJNn+0gWNMQggee6kc79lLxuE
 jXOFtNa/ClEoRDZqrLw50vE/rirFoy5Mx5eW5fr+isOK9cHb8nEEwMRC+
 P7vbXQtRbAgHXHTB/iH6alib129rtSN9OaMK+3AOP78YZSa0w8N5VO47g
 MvzcPSQCzK5Ys1GWCxwQ32xAJveJR4H9bmhiZRpTqeq4FahgdbQhd9a/n
 +49QTbqaXE/UtgXI+A2+Gugj7f7q88UsG7CFAMswVdeLh5zQsyC/KC38n
 p7Z7tHPdx/nBzXinAKfay1RbcgR69z8rTyJaNVIlkw8t89DvW/aWEvLbm g==;
IronPort-SDR: 7fJFhO5oYA5xYAehleczeD74oA1DKXl0xisn8Fi6iDb7SCPsnVdqfujHQMxPh93Cgf9gbAp11u
 xVtcp8qegrs2PEo5zHfzCpKKKrbdxmzk9KrbzcQjNGMaWbN4w9z0vP/iR2tkwCmj9ljzRb2qV8
 j4swR/tjRyT/O5RJTIS1GWQ6mpawDsV4mUeBs+sh4soYd1J+/CEhjfArm3pm8eF6mQa5Z+/rds
 oPxgTrQn0rCDIQW9LQHBhPYEvfqh1YxlTyiCnuZuhhTyriNUYD7b55nNlUD0t4fONEIy+pzHdg
 dnw=
X-IronPort-AV: E=Sophos;i="5.70,501,1574092800"; d="scan'208";a="131073161"
Received: from mail-mw2nam10lp2107.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.107])
 by ob1.hgst.iphmx.com with ESMTP; 01 Mar 2020 08:30:08 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kn/uxbyBP49LYaw6g7cBmOgCMAGX72lX8AwqNlFsfG5U5p1LToB3Y7GZ7RTjoHEtjFG3oWGW3sIg/9uvMrRbIsiSBOIHQ6J5V16+kvMZoa0gsNoIauUIv4BBE50TRKuza6O+V7244ZqBdJS49GU6d4rjchFzfhpLrfKn1+bVk9Da0UM5vnJuNyGnVqdXZMHdpCqlNCh5TOq3miOvyoN9dqWuRihkWZ3Vnr4QeF7jkl8ew88Lihti60OyiW8bHDaqZnPhfXQyKfhMQzkoqvd/TvGMPI3HbB/9GI/tVnOOW9DxjJjIV6CzCruo6CgVIKKNgfWYAvafMM69MAFel57zBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NdoUTTlDU4QBKxX5BcqiJt1Q1GnB4KQXYaXqMhPE7yI=;
 b=K7j0WWAIyz8TJt7FceAexlTTdwAKHKMiGIhROMYhw1Fn78rU0ZsNhO2ITRCTQKK4WeO4CpPAvKeYMvJVpPMEgeXz4kXuJHtZWs56cDgAKFCkWhkRj+W5Y9M1JZnkfz2UEyieSqLWZyF/Pq9HF0vMgUfPAOOZFF4iBx51HzSwnHxLmxh1ov2sDj3TQqjRa6rbSz0/ycvOiIVF1zTMN2usCk78sIdo6C7TICvw6zpNeDhKsA0TA/8Ot3iemJeKm14M4J/52Hs7VRrZ+EYZ8F8uyJb4gpx6Vn4nYtKzxfeJv4Hb+enaQoywsthhiJflKgsePCBno3TVmPnvJmP+mi6O/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NdoUTTlDU4QBKxX5BcqiJt1Q1GnB4KQXYaXqMhPE7yI=;
 b=AYbOoJslvU0DBjOkoRU3JB+L8WcJyVbtYLdN3pEhosr9ohSs58YRP/l0eaIwzP/tzjPL09Jkcjf9RBIpVGO/9ged9uxyUmdlS1OHSxi8tOGfFIu/zRH9B/7IXk2d7PFlOx2swlKLRIPGLLEF2gtA/vkqBxxyHdLjDcARjoJ4m20=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (2603:10b6:a03:106::21)
 by BYAPR04MB5927.namprd04.prod.outlook.com (2603:10b6:a03:110::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Sun, 1 Mar
 2020 00:30:06 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fdf8:bd6f:b33d:c2df]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fdf8:bd6f:b33d:c2df%3]) with mapi id 15.20.2772.019; Sun, 1 Mar 2020
 00:30:06 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Sagi Grimberg <sagi@grimberg.me>, "amit.engel@dell.com"
 <amit.engel@dell.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvmet: return Invalid Field error on set features cmd fid
 07h
Thread-Topic: [PATCH] nvmet: return Invalid Field error on set features cmd
 fid 07h
Thread-Index: AQHV7jYHasAQKVdigUi+gTTH5+ok9w==
Date: Sun, 1 Mar 2020 00:30:05 +0000
Message-ID: <BYAPR04MB57499DC82E126AEAD6682B3C86E60@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20200228125214.100729-1-amit.engel@dell.com>
 <6653e6ab-0fb4-7cb9-e759-eecaef4eddbd@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 584b5da2-f7b2-4115-f869-08d7bd77b0cf
x-ms-traffictypediagnostic: BYAPR04MB5927:
x-microsoft-antispam-prvs: <BYAPR04MB5927583C46A402AFC6D2DF7986E60@BYAPR04MB5927.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 0329B15C8A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(376002)(346002)(136003)(39860400002)(189003)(199004)(8936002)(186003)(53546011)(86362001)(9686003)(66476007)(64756008)(8676002)(76116006)(55016002)(66556008)(71200400001)(6506007)(81166006)(81156014)(66446008)(66946007)(478600001)(558084003)(26005)(7696005)(2906002)(316002)(5660300002)(110136005)(52536014)(33656002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5927;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SQVz7oSgknv9EUBTV2i2ch/UKTWG674ZjQDVF+obbsbSFt3YzCwiVKTCv7bWf9YaECjDvF/WVGdWptVBwEI+u0nB1Aq6z1uTmu1deushkBxP3v806ej2/BlWuNu5DNuNhheE21+Jd0xXFPmHoQvPkeLKmyPU0cdpSbycqv0MQBWQeF8B5f2eRRlE7rCyh6sQM4e7DyQNCas+NNIufdFvmCyoA/Kg4e6GlnU64V4XKbVnAwq5f0FwIlyOC6DPFufA9+/gKNFxGS9OyFfvStj1ckCII9o0wp+4aaf2019xM/5lLXlb0afFq8Zvyne2LgD3BZHYvwJ2CME642sc+YmLqZaZG/wELYjqEj+TlTWagv3yMJA9zEMLh9NoBI2UoaUUbhHkRJuEbdxkXMZ1A+SPWHiLExgEbTsSumH4fAPCnvM4/69UIIttLsne76ytJiT9
x-ms-exchange-antispam-messagedata: m/QdO8kdlfdtM3fzYO7nTXTMxTNOLuf+Ul+Fd0005PlLLrPfVttVxKkFu7+AVebvPy2SXvxd4Xxbwi+i3Ezgq/KqWoI8FU4hjjNmZvIKaRGrVLhWmnaZrn5NV41xwPurUgtNtGdGihEv8sRykPppMg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 584b5da2-f7b2-4115-f869-08d7bd77b0cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2020 00:30:05.9882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZABovOjzulj/PD9ffm4kwPi2BsbaArmCONQVq54UQaRcwSRs3zS+0LQ44gDQ9/jvh9xB90XP7KcvoYXXOwq5eg22xqWIM/1rmpGAAKNiftM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_163013_405416_63EC3DD0 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Sent out a patch with following comments and appropriate history.

On 02/28/2020 12:33 PM, Sagi Grimberg wrote:
> I meant that here we only declare, assignment should go to where these
> are used.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
