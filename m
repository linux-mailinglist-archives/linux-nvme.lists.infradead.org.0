Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BD61E6648
	for <lists+linux-nvme@lfdr.de>; Thu, 28 May 2020 17:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FLDsUN07Qbbsk/TIeU1a6efW84iY6wf74sCpHGpwRyQ=; b=SnjZCC6Uym3GzdtNPk4WLS2L90
	c6rtkTNljUsQbBNivYS5pF30YjcrarGFZ5RpqiMgtB4EPFwXqh590pvuHatprx5CYvJoMSPo89X90
	3PEc55T4CX6r0amCVvvAbLgmQGfaeagpAUxbJZP2Cvu+OaGdbYO9CO4CDhVKNJ/mG/TeUuV1skbBA
	/4FjsXlgfcSUsrs1M+peY4ve7ewj5EcwZQnMm9fDQwuoCEo4ixYqvH8vwbIa+rwuvCyKj7mHMsZm+
	+37lofapEmyq9qbwL2E9q6ogyAG6P2TJVwtP4nxs4xAB0ObSGitkgIctYQvxgVisiglc+FO4LlNNe
	HGrR4M0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKaH-0001zg-PQ; Thu, 28 May 2020 15:36:41 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKa2-0001sb-Vd
 for linux-nvme@lists.infradead.org; Thu, 28 May 2020 15:36:28 +0000
Received: by mail-pf1-x42c.google.com with SMTP id z64so9171296pfb.1
 for <linux-nvme@lists.infradead.org>; Thu, 28 May 2020 08:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=j2E+QWCN99GkL+jUWwqOa5WumEbu9hymujfpSZH48JM=;
 b=CahS7+Oqf9MMiC+5XoJAyIlCTgM/47HU083Pw5nxpdLBudce0LynUHMZq4q44nzko6
 mb7paavfK+jutO373Ba82gtkCxmfPS9fJasvKEnJvIL2FZ/LD9OE9a3HX00xyAJ4J0b5
 QjvovIyrYvCRWiR2/a1WUDwzm3gayuv5F6NmAMUTtzYTX48IH4gSMxgWyVIRpT5Ij8p0
 4EW/r7lcsSAjYJEI5fDfgDVA1clwXzuBBQRPzQpu2OTaZSC7pUJgyCpHYHBPcV6Xw2sA
 Jdh1rDfyZLiorpssBXKx7PgNXtnhO+S9BYegImv2msGTvJDy7k3rY4Dr/gJYCeS2Fd92
 DsLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j2E+QWCN99GkL+jUWwqOa5WumEbu9hymujfpSZH48JM=;
 b=l1ay7sknpZlwt4C97bKvGwz7O6D4Dlum9ZGnIO8N2OUx4AkpDlWnc0yXa4Ws53Y7QB
 VuE+H5HTzDlVDzdTE73M5XkRp6WF/SQmx60EFs4edxEBoforORDhTpGeNka+gmqHbLFO
 oq9BAbTK+j68dg5u9Dfjk68L2JmkPht9UT/LqVMhMvnooIXpnO6i5OImfkAK45HQBs7D
 GXV8ygTfunmAXKsTRXCVcoJpdg4Fwf1OPbWAWFIS2yAfTwkeqlbCiVERJpoDD0z1XA/x
 kFTwisIOFpB6CVFLjxpYwegohg4eiDoWm2XbIK6iQs9LBi/p23Y+EWgnc44HIYn7xwMh
 v7IQ==
X-Gm-Message-State: AOAM532elP+FN7QMotG6RoIXBrDl9JDTq3sJHRW4Mdi8sA8zzkmMcuUn
 yZG+ezDDSXh0arfKVh1B1rVe2w==
X-Google-Smtp-Source: ABdhPJzTMGWXsJcMQNUvqT+/Wgk98+2+yEQ0N9aF/rgpbgwENcF0LDXkmiClZdcsegasGJHD5S9Sxw==
X-Received: by 2002:a63:b606:: with SMTP id j6mr3585474pgf.334.1590680186112; 
 Thu, 28 May 2020 08:36:26 -0700 (PDT)
Received: from [192.168.1.159] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id c2sm6227351pjg.51.2020.05.28.08.36.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 08:36:25 -0700 (PDT)
Subject: Re: [PATCHv3 1/2] blk-mq: export __blk_mq_complete_request
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, linux-block@vger.kernel.org
References: <20200528153441.3501777-1-kbusch@kernel.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <d9376cc4-16a2-2458-7010-d18b780c7069@kernel.dk>
Date: Thu, 28 May 2020 09:36:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200528153441.3501777-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_083627_022795_E6490C56 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/28/20 9:34 AM, Keith Busch wrote:
> For when drivers have a need to bypass error injection.

Acked-by: Jens Axboe <axboe@kernel.dk

Assuming this goes in through the NVMe tree.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
