Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2031D413E
	for <lists+linux-nvme@lfdr.de>; Fri, 15 May 2020 00:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdMOfyrlv1TaFnWPebXK7AgWy0Eivm096WakP4/HptY=; b=OEpYuPclVVsB7s
	o/O5pveG3/0Z/7hM+kn5pwixHwN0i0mQOIGELuPCZUfeQ0CcQTlVbMPfei4lAzVlNCIByD9o5rLfX
	op39nsHdmD7qKIixAKWnq3wjs7PvI7fC6cubUkj3N0QDkEj8LJjPhN+zB08+YAul2PB2le6VlUS81
	tn2xfIsy7xOPS/U+Ok6SqKLnpiXayUd0eNeCebJb1fErmTix5S9/rsFvf6JTexEjxq9IH53gZ4KMD
	nDRhaBkA5bxpjjinkd0H0hxbrnz4eP/VIPthjDkSwX7B2zxYc1ywXolkNehcK0Q+6sqaR53aEQ9ep
	KQzkeWb9F2dcHYTi7pGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZMYV-0004qY-6e; Thu, 14 May 2020 22:42:19 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZMYR-0004q4-2I
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 22:42:16 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04EMbkVx022866;
 Thu, 14 May 2020 22:42:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2020-01-29;
 bh=LxeAlOqpGjfS8uCjcQOpPTxtFQUdRMZRUv/RG4buqu0=;
 b=GaTK7obO5xl/DF0Wsd2UNDDhwCUtEPfk4PhpDl82VWcVSc82E3UvryoCCiXmMDC6Tr60
 aMi3bIs5ztQQ/CIMP0Pmt68tfceJRoOcuLJPJeQW2KGMx09mGMCB8jvCjqFByc61fJL4
 T6cEiRd/dkO2e7F0Z1u+r11b3IKotGiSd8iSzL/vhnBBchTIAi6qtNQQ2Y8KH+H9678/
 DI5cmB1WQPW+yK4zvRhNCoF5ppVFyBLM+br649wH9x0qxnA+QenJT9tB/n4dNpeZp8qr
 iegZCkiHhI7drO+XEaI/dZizoUouoeyt/i0nOp77ETbe27fvmXVazuAdqrBdeYsIDRC5 Tw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 3100xwnj0f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 14 May 2020 22:42:08 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04EMc7PP036462;
 Thu, 14 May 2020 22:40:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 3100ydh7vt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 May 2020 22:40:07 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04EMe6Ii022527;
 Thu, 14 May 2020 22:40:06 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 14 May 2020 15:40:05 -0700
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 09/16] nvme-rdma: add metadata/T10-PI support
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-10-maxg@mellanox.com>
 <yq1r1vnw74v.fsf@oracle.com>
 <c7f3151e-a401-56f7-735f-476b01337b17@mellanox.com>
Date: Thu, 14 May 2020 18:40:02 -0400
In-Reply-To: <c7f3151e-a401-56f7-735f-476b01337b17@mellanox.com> (Max
 Gurtovoy's message of "Thu, 14 May 2020 11:48:18 +0300")
Message-ID: <yq1o8qqta2l.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 phishscore=0
 adultscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005140196
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 cotscore=-2147483648
 mlxscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005140196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_154215_198468_BFFEC515 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 "Martin K. Petersen" <martin.petersen@oracle.com>, shlomin@mellanox.com,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 idanb@mellanox.com, oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Hi Max!

> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index 05dbed3..9b9d11b 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -1338,9 +1338,10 @@ static void nvme_rdma_set_sig_domain(struct
> blk_integrity *bi,
>         domain->sig.dif.ref_tag = le32_to_cpu(cmd->rw.reftag);
>         domain->sig.dif.apptag_check_mask = 0xffff;

Also, this has me wondering. Not sure how it works in your case?

There are basically two modes of operation:

 1. The app tag is opaque storage and may be different for each LBA in
    the I/O. The only thing the HBA should do is to bypass all PI checks
    if the app tag value for a given block is 0xffff (if app_escape is
    true).

 2. The app tag, or part of it, is constant for an entire I/O. And for
    that model one specifies the mask identifying which bits in the app
    tag should be verified against a constant value. The HBA should
    still bypass PI checking if the app tag value for a given block is
    0xffff and app_escape is true.

Linux belongs to the school #1 of the app tag being opaque storage. I'm
not entirely sure how that works given apptag_check_mask = 0xffff which
sounds to me like you want to verify all bits in each app tag against a
constant value. But you don't set the constant value to check against.
What's going on there?

>         domain->sig.dif.app_escape = true;
> -       domain->sig.dif.ref_escape = true;
>         if (control & NVME_RW_PRINFO_PRCHK_REF)
>                 domain->sig.dif.ref_remap = true;
> +       else
> +               domain->sig.dif.ref_escape = true;
>  }

ref_escape should really only be true if the namespace is formatted with
Type 3. Whether the ref tag should be checked is orthogonal.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
