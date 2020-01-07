Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1749131E25
	for <lists+linux-nvme@lfdr.de>; Tue,  7 Jan 2020 04:49:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SlphPfPTz8AhZvDP1mrOOk01mut3Gmm5630oFI2+0o=; b=AM8Nk8SPYpDII7
	SEx6EwdI9L19i9kI5vVDXe+CzEdVNwC37zQm/YxzwzAYC7AvZhXB0RovehxxPiJ/FxdIFIFQ6zzEq
	mfwNya7j8tEvLceBWWlE/KfsDv2j26kAyveiGLRBDDqVyAshmAuSOAMYc0HsmLBZ7zufpIdW/gYg1
	45nVzj2ywsgVH9412lituZXOVcu1eRufPdrHqUJyo1/zRiL5ea63Mk1E5cstdXsaCJKdnQlp5qJRm
	fqs0sBc39HWoD01hpBghNQg8Ig6HuSAaj688x9IlOX/Nh63Sfe+M1e7tmyTNoVYNRa5SeiPAoyWs9
	ZwE4bmz0+WnArsCZWSlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iofrf-00045W-UP; Tue, 07 Jan 2020 03:49:07 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iofra-00044z-Ja
 for linux-nvme@lists.infradead.org; Tue, 07 Jan 2020 03:49:03 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0073haFG071883;
 Tue, 7 Jan 2020 03:48:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=xgOB4zomvRZ7adt771i27d5HYk/b2xGvueMjSRBRM0Y=;
 b=TZMPVBb+uOtU/gcle/QKM8B2FIjboW6jmmUoHSo34VgxWDhZ/MAjrp24Gxa93uMr149b
 GEj3YLdLV3Emue+ekpE8VYLTybPLfV4d79GJP5XI1uOH2wJ+ki0zaempt7/Dzcsk8BUm
 fl3rf+Z3+eYc5MH5d8pN/45ByFiEc/53fc2Fz4hep5jKHyzoCdT9oVOAvPQSJiX2uCcp
 ExeL2YvHSINzkKyZxbmaUwD4EB5oconu25l5++C42k7OG2u92Ib+A3jTNkuBG/LjSIF4
 7eJNfM0L6PeGVVw20Tzq0KKyXlnQUOS+GLMjTxQ1++Z02T9b6JtdTCnzO4I066IRk5vL 4w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2xaj4tu0fd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 Jan 2020 03:48:58 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0073muCc037940;
 Tue, 7 Jan 2020 03:48:58 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2xb46816s2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 Jan 2020 03:48:57 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0073mXJn007470;
 Tue, 7 Jan 2020 03:48:33 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 Jan 2020 19:48:33 -0800
To: Balbir Singh <sblbir@amazon.com>
Subject: Re: [resend v1 5/5] drivers/scsi/sd.c: Convert to use
 disk_set_capacity
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-6-sblbir@amazon.com>
Date: Mon, 06 Jan 2020 22:48:30 -0500
In-Reply-To: <20200102075315.22652-6-sblbir@amazon.com> (Balbir Singh's
 message of "Thu, 2 Jan 2020 07:53:15 +0000")
Message-ID: <yq1blrg2agh.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9492
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=788
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001070029
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9492
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=846 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001070028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_194902_778865_8B38B9CD 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: axboe@kernel.dk, Chaitanya.Kulkarni@wdc.com, mst@redhat.com,
 jejb@linux.ibm.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 ssomesh@amazon.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Balbir,

> diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
> index 5afb0046b12a..1a3be30b6b78 100644
> --- a/drivers/scsi/sd.c
> +++ b/drivers/scsi/sd.c
> @@ -3184,7 +3184,7 @@ static int sd_revalidate_disk(struct gendisk *disk)
>  
>  	sdkp->first_scan = 0;
>  
> -	set_capacity(disk, logical_to_sectors(sdp, sdkp->capacity));
> +	disk_set_capacity(disk, logical_to_sectors(sdp, sdkp->capacity));
>  	sd_config_write_same(sdkp);
>  	kfree(buffer);

We already emit an SDEV_EVT_CAPACITY_CHANGE_REPORTED event if device
capacity changes. However, this event does not automatically cause
revalidation.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
