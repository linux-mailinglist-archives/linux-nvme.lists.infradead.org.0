Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A56EF67E
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 08:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPCNsmr9lCf11oEbif+vnr6eSbw2qGGZnCojAhWjDtY=; b=tfnaFtBvH6IOPd
	WJsaIjmr6QFyvl/hWZWO086urLrdGZjBTfzvr94piVRl/UTm/e9xHmQs5SXuiW+MzvIzQ7TfQW63C
	JV3sycsOV9fVENibpmn3y4q3gq9ZrpbCcnFRKqLIY9rVkExMidu89T+OYJ24xDSw7TjUOVjwNbVxX
	p0ZCfViss6Ms2r1AADduvTnyCVPU8w1onERePvnFH5S0lFdiKC6Stb6Fy4xNZsFQbp3c8uE9QAyHA
	YyfXQCOxKgPbGQruW54IkFP22T46bYEOjQZmB5fCqcidpm8OO14XSOyO74uNGaiqtaDj0OL0COgNS
	cGi41WqYvH4EIdbaDpFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtQv-0000W9-13; Tue, 05 Nov 2019 07:39:21 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtQp-0000VR-Lu
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 07:39:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 4B18A27E038D;
 Tue,  5 Nov 2019 08:39:13 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id WZi-j-psq1ez; Tue,  5 Nov 2019 08:39:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id F036727E0F36;
 Tue,  5 Nov 2019 08:39:12 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu F036727E0F36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1572939553;
 bh=hx3mdGmfd3A2yXNYBNKBzEOSJVTZytIssECNKp+fs20=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=Aik5qMka4c770O4AN3iXBLTgAalac4IbTDZLpvx5Mb6cJci82VimmN9/nTzsXJB4T
 D+UnQMtj7Se5PLeC6O6ZGFVZcMP/6KshMbWZ9/WDl2cj2JCk6gpIZr3+e1avzmSpe4
 R4fV0ZVl6GWEBXzh+aH504wEHf48TXUZnoXwnKqc=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id sGIeDZDhfzy7; Tue,  5 Nov 2019 08:39:12 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D596627E038D;
 Tue,  5 Nov 2019 08:39:12 +0100 (CET)
Date: Tue, 5 Nov 2019 08:39:12 +0100 (CET)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Charles Machalow <csm10495@gmail.com>
Message-ID: <442718702.90376810.1572939552776.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20191105061510.22233-1-csm10495@gmail.com>
References: <20191105061510.22233-1-csm10495@gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64 to explicitly mark rsvd
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvme: change nvme_passthru_cmd64 to explicitly mark rsvd
Thread-Index: PH7LCSaTYLN4Dj3ginxBCp3tHjyCGQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_233915_893644_12CBED16 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



----- On 5 Nov, 2019, at 07:15, Charles Machalow csm10495@gmail.com wrote:

> Changing nvme_passthru_cmd64 to add a field: rsvd2. This field is an explicit
> marker for the padding space added on certain platforms as a result of the
> enlargement of the result field from 32 bit to 64 bits in size.
> ---
> include/uapi/linux/nvme_ioctl.h | 1 +
> 1 file changed, 1 insertion(+)
> 
> diff --git a/include/uapi/linux/nvme_ioctl.h b/include/uapi/linux/nvme_ioctl.h
> index e168dc59e..d99b5a772 100644
> --- a/include/uapi/linux/nvme_ioctl.h
> +++ b/include/uapi/linux/nvme_ioctl.h
> @@ -63,6 +63,7 @@ struct nvme_passthru_cmd64 {
> 	__u32	cdw14;
> 	__u32	cdw15;
> 	__u32	timeout_ms;
> +	__u32   rsvd2;
> 	__u64	result;
> };
> 

Looks good to me. However, please note that the new ioctl made it already to 5.3.8.

Regards,
Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
