Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06161CB3FA
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 17:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewf7J5ey1MLEti5Kin/vfXi6FJZljVDgOp6lFt/Td9E=; b=oG57BiBcHWJmoH
	Ys4ppRnJC6B10NP5satkMQPjLdpHs9A5yMa2zfVmyKiICeRduimwlDTld8RFCDosfHCO2sgXWPqW+
	ZB+kADcVnGVCi3/XJjIGX6drHPIi3EEVlawc9Lh2gC6dqzOZM9qnMmlxfDwLQmKv5/wRX3EAtVWXY
	f54NayOTOw/U3748JrYiIhW2u7ObrzcV5rfXP44frU8oCjNcqTBAIjV3X/4CgPM9MrXeKrAmpbZqj
	lbg42ixGtmRWkXehfntNbEmSmS3doxVMOTCOz9Dglg29n5pTrmL7wmoWP8/mBjtY75ulDzWLTm6xf
	ibsYstOJzrsP8691vFyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX5Hp-00069S-MN; Fri, 08 May 2020 15:51:41 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX5Hk-00068L-Bh
 for linux-nvme@lists.infradead.org; Fri, 08 May 2020 15:51:37 +0000
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 048FpSqG017778; Fri, 8 May 2020 08:51:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=facebook;
 bh=45li5VpjgsibQZHJh4k/2TSz8mYX5CbiSyUqEUaoZTQ=;
 b=e0qMSmMBRvLyJFoDKsWyzaqG3su49pgTPVEj8M8gD1pVU+z1GOumTTNdm1hDld/aCp3m
 55SvPEIKTd5MQHCA8zq/3N6v/JIabwNNM4k9+EVFdbfQ0chNx7Be4kjB+opAeEtj/k6G
 m1lUAWlVz8bJwRO7cYPP/FsWat4QaxqgUEw= 
Received: from mail.thefacebook.com ([163.114.132.120])
 by mx0a-00082601.pphosted.com with ESMTP id 30vtcymaxj-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 08 May 2020 08:51:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.229) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 8 May 2020 08:51:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AeI/lFZcyFqnAx2WIHOlPaG+sQ83Dbm5uxg3wFxkY30Hg3XLUoxOlt0W9MVPY6zWZV/+knxWb8s9XEY6JjSBQxnhnkHqX+KFXdp7qO3Jzp8ylMlhT4t1YFec69yH6QCy7o3tiQ3xgCbJeYmcFfVqSajMiJ3/kNH/81fGpbyzgb8waYogdHkoSYGyte0immQ/f9DgDoQqfGa/nkvANVV/XTUzzgMoObOuAtSa3GwMeTqTmeayaacTg1/tmh+kJfR6MRRW825+NNhFxQiFcbipF0smXCfDyYwd4ZbF2jbYB1SuexNmZHKdIiN4c3sRUfGhqpFgS/QVwiQunuvgeBGhJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=45li5VpjgsibQZHJh4k/2TSz8mYX5CbiSyUqEUaoZTQ=;
 b=Zcz5RS8aQ9ot90j3LdK3VaXn0vQ9cR3Wbw5Q7nawNB8/AR7O5zASgIJupIHd2Ujw+OiUSMG3ZynmKyhaXnh4QFZ7rqZwlCdktRnTQb9PhS7c3wVTjYX+/SYBa1g//7zXluIqakuRmIF9DOnrkvBBPu1HkjIPtBZ/oMDDGxBo+cXpAYQMAdvNMfFlMkVeduekxGgycPkZVDy54/LaZ5Dy0sjS2CDKoHzdO6fNAM7Hc1tUdGSZ6iT4EoDdEjBKSC/PdZbtuPKxsKp3SisgtHdyUaxNgwcPPgQ57sEFvL8jq08r/D96F/HNOmp30KfntM+VeZrR+BxMzg7PjpVKplu8qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=45li5VpjgsibQZHJh4k/2TSz8mYX5CbiSyUqEUaoZTQ=;
 b=UGlqHM+Bok4QsJUUqgz255BK0nVsY4wvNvez+NR1BzXLcw9edOMECI+kyCHOujvN6wSuBR8YLF3Kvrq2sFWrqsx+tLCXmpHNQLYMke6ZETFeH30uoUZFdrsYv4g28RbOdXTN3lT9GxJtrmomBRHygVryRZ7s2/orLtFp+uw7/JI=
Authentication-Results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=fb.com;
Received: from BYAPR15MB2566.namprd15.prod.outlook.com (2603:10b6:a03:150::24)
 by BYAPR15MB3110.namprd15.prod.outlook.com (2603:10b6:a03:fe::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Fri, 8 May
 2020 15:51:12 +0000
Received: from BYAPR15MB2566.namprd15.prod.outlook.com
 ([fe80::8da8:642b:d574:16d7]) by BYAPR15MB2566.namprd15.prod.outlook.com
 ([fe80::8da8:642b:d574:16d7%4]) with mapi id 15.20.2979.033; Fri, 8 May 2020
 15:51:12 +0000
Subject: Re: [GIT PULL] first batch of nvme updates for 5.8
To: Christoph Hellwig <hch@infradead.org>
References: <20200508154448.GA250683@infradead.org>
From: Jens Axboe <axboe@fb.com>
Message-ID: <7d4bf713-14b7-ba1b-0ad2-834409bdf637@fb.com>
Date: Fri, 8 May 2020 09:51:09 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <20200508154448.GA250683@infradead.org>
Content-Language: en-US
X-ClientProxiedBy: CH2PR07CA0031.namprd07.prod.outlook.com
 (2603:10b6:610:20::44) To BYAPR15MB2566.namprd15.prod.outlook.com
 (2603:10b6:a03:150::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.159] (65.144.74.34) by
 CH2PR07CA0031.namprd07.prod.outlook.com (2603:10b6:610:20::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.29 via Frontend Transport; Fri, 8 May 2020 15:51:11 +0000
X-Originating-IP: [65.144.74.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cc124b8b-abd0-4bbc-2087-08d7f367a227
X-MS-TrafficTypeDiagnostic: BYAPR15MB3110:
X-Microsoft-Antispam-PRVS: <BYAPR15MB31108E9BBE582603AB7C533CC0A20@BYAPR15MB3110.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-Forefront-PRVS: 039735BC4E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0A6AgbptG+k1xFmW+0UPaLuT7aaX5gBK5DWsBvIdfRk1lnzaym3NPqg4XjLi35VXs//dBGvWpfzMOhST8bP0X7RIcaAM0y/wErh2ouGB3+G9KNCXGgOpSS2dXJVEbgcv/fLJQPOQifDpFKwnmCjo9yvPmnTZTcNr0dkwW2F365VSv2863JYXvIzHql5NoG2FT24pAuf2uGBfHjKyZPfv3sd3CJygmnPlYWnZfwvbZ/+9k++MoGVmzk5wzQsdProjEoeEM2cXu/VWnSarp0vVmvuIE+q6MrZi5TIu1oFI/agCRaQ+kUQXuMqMYRHw20YzM1ldnwgp50yUJITB43f0E7HYuoPJYNsd3cE++LkwN5mOxt0LhKSSyPoehyuSpXVHf3gEFLbr1Axjo1VUqtTtIqC0gD+bpf57vQrlAb/1newBa2F9c7nU4K7kc0SaEG21S+1EyOr4WzLOGpLulVs8/62Cngr6jQMy6hhjBh5qrZEQ/N95dUBdo4zFFdn+l6HdjUmN+I9DKpSrYCXaL6iIpKdMAHyz8fNc6YOjtrcCbCnW78lA3qhtTnF0+qFY6L0W
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR15MB2566.namprd15.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(376002)(366004)(346002)(396003)(33430700001)(6486002)(956004)(15650500001)(33440700001)(16576012)(316002)(26005)(66476007)(52116002)(66556008)(2616005)(186003)(66946007)(53546011)(16526019)(54906003)(31696002)(478600001)(4744005)(5660300002)(2906002)(36756003)(83320400001)(83280400001)(83310400001)(83290400001)(8676002)(86362001)(6916009)(4326008)(83300400001)(31686004)(8936002)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: owpDATHBDn3x1TOwzisMC4VSs/5k4T9JomvXUvwDKDPYqFUzhjeb0yiqh6T8SDX8iTmLslcGBqEZqBIfDjo8pAV3Qx1Ul/rlxyeDTpoS+LwHr4IqWBE3IYW+IheGuynDiO0eFoibtE9CFxUnoMcVY8g0yW+Z4fiO89ZKpMyJcM4Ob6nXVvM+TXntkXCufla8fKukBHHdQTNk2THLsgjtJ8GrBIKZZoKEESpWq1wUaobngMtSbm3/lDkhw8S5nMAMXG5pMkW8HzKHE5hoVNBQhrOUC1rU9IQCdH2rKTX9IhVFDGdsETfabzWHMomCqxZ2Jjz17ZTKgto/NUwaV8lvAuzwoFoRTH5OKxgvf+4Jh/8Cvk+0gh6b2e8662GeW0rsi96/Owm5BQlHWpkNtgq1e1rITKMldtVFjM6YkB6t/aqoZpw/IYBUshQK+Ehsmbj1uIibRjktl5iasnhot5+l6JZtYyjGCdWX44P8ubutJHs=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc124b8b-abd0-4bbc-2087-08d7f367a227
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2020 15:51:12.5078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4ZCe7qfcZY7aP+lxPGh2fNrqvjgsXtt3uG2/XMjWZ3hfKNhjAXkIoMi9aaR2lJsH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3110
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-08_15:2020-05-08,
 2020-05-08 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 lowpriorityscore=0
 phishscore=0 adultscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 clxscore=1011 suspectscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005080138
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_085136_524610_80963BDD 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.153.30 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Keith Busch <kbusch@kernel.org>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org, "Martin K.
 Petersen" <martin.petersen@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/8/20 9:44 AM, Christoph Hellwig wrote:
> Hi Jens,
> 
> here are the first 60+ nvme patches for Linux 5.8:
> 
>  - NVMe over Fibre Channel protocol updates, which also reach over to
>    drivers/scsi/lpfc (James Smart)
>  - namespace revalidation support on the target (Anthony Iliopoulos)
>  - gcc zero length array fix (Arnd Bergmann)
>  - nvmet cleanups (Chaitanya Kulkarni)
>  - misc cleanups and fixes (me, Keith Busch, Sagi Grimberg)
>  - use a SRQ per completion vector (Max Gurtovoy)
>  - fix handling of runtime changes to the queue count (Weiping Zhang)

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
