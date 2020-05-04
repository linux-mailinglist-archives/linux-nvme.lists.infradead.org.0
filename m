Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917BD1C4ACC
	for <lists+linux-nvme@lfdr.de>; Tue,  5 May 2020 01:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+fARSUEMHXrBdL9Li9sjMScCOOGrn0Ws7hq6Pi7mmko=; b=DmSWcyu1ewt3LQhU+m2mKdGtO
	QKIa6fPYgJq75N/iDW4c0TAWIA4WEbaJ7vSEKvfUR7qXSrUzAwVeGnt/cXr2ElaeX8V/QTxzoc3Oi
	T9keNRWpT8tMO/Amu2WSkaFA0RhXEsOf/zg/FdZvEJ9dThG2m8g4SJnGKz81VZ+/PLY8spE6GXQyv
	XuRGKrakEA4FdZEMDv7kQWZRhOYzijyXjfQjdrrG84MvNfDHf3uTag0JxSX2MyZFP5z39xJXTa/6s
	RW31+oNYadS3XBcLkZFcSPV7k4FaKMrom2vpeukB48sLa8AQrPxXRpE1X1ELYZi8pY9f2UbPymRRn
	ah+jq7WNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVkzm-0006sI-Cr; Mon, 04 May 2020 23:59:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVkzi-0006qL-Ba
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 23:59:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id k1so582222wrx.4
 for <linux-nvme@lists.infradead.org>; Mon, 04 May 2020 16:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=OwsK4zHj4GUEy72hInutxnOpqQaAcXb5LNtfqHqKAlY=;
 b=Xly7xBSONP7Q7QKeruDa2jlgTh9toRqIOfVE9N9skODvPXunw5wY4aHdu4oXwEAlwi
 cRmDffZ5mCAwdNDAsXTs2tgQMjYc3ADSG8nvbm7QXn4F24HWOA7FPHlXScubreHAToeJ
 XJoC8Z5W9O2ZWFe4W7wAXzjRbsPiasOe+9uMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=OwsK4zHj4GUEy72hInutxnOpqQaAcXb5LNtfqHqKAlY=;
 b=c7+SV9bmW+2t/ymRbrUyNpzGROoxO2135j9X2asd394UbRSggldijxKdhq1KoH+JwO
 nmXriKmfsN9N0bwmRCGgtzOAuE6YTiw7ufDHvqi3FGXM97XrfT76iAimpw97EUsvrRlc
 OS514R9ZzQM/l5cCBD9N4Wa1fAGy7H8xJO1TODWiCHbLsobzWjLDezuIvlvfnR0nUea1
 vJwWLtHCkwIFjaWG8WKXNJ/dSQM+ufiEsM6mow2/t7UVf4nFhFKd/LkUVmcF3qBxe7uj
 Z8GFmplUuzQM//PzdhWONLGA6DAX6mNm7smiXTqwi4XWPxglgV/riU6cP/DLmqu4B3rZ
 zxww==
X-Gm-Message-State: AGi0Pub+HSpiOXdB94RC22CjqXTjIWFl7XdxqkhKzq138t0alIgGbBIq
 gwRVCMjqsn/5Bi0Ue54WvdKmTg==
X-Google-Smtp-Source: APiQypKrgRSnRtw0d4pXq9bd18cxY7O1obBRiGuh7v7dKmQH9uSTpDh0EBPlTAyiL1zaYEGOukDPmg==
X-Received: by 2002:adf:f6cb:: with SMTP id y11mr401379wrp.304.1588636766989; 
 Mon, 04 May 2020 16:59:26 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x23sm939048wmj.6.2020.05.04.16.59.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 16:59:25 -0700 (PDT)
Subject: Re: [PATCH 02/16] nvme: introduce namespace features flag
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-3-maxg@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <ac512152-7076-c3d7-9fd2-cc4f4e8114b3@broadcom.com>
Date: Mon, 4 May 2020 16:59:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504155755.221125-3-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_165930_407105_874C0413 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/4/2020 8:57 AM, Max Gurtovoy wrote:
> Replace the specific ext boolean (that implies on extended LBA format)
> with a feature in the new namespace features flag. This is a preparation
> for adding more namespace features (such as metadata specific features).
>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> Reviewed-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
>

Reviewed-by: James Smart <james.smart@broadcom.com>

-- james

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
