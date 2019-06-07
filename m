Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B4E383ED
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 07:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDy3rCdMNpx5SmZZgBTDWQ/JJJ+ihfE/Gn+ZwB3ChMs=; b=cxTojcxHm5X+N7
	A80DhA4HzhVANS9JLUuCRUZOAFDABwN1tjjQtO6oqT2vxbZ7NKPEoQs9/m5xuybMcyyutXcXjzcJM
	eYsVnsPR6n+gL4Iuni0wAn4YA2AdEnqNss4vLMjIx8t3fOS4aQ8n9url7uGJNA5RdnT8y0x5bpBss
	TWlIq4hy0qrThbFnnpJnGtldk1SaWvHG5QPIHxQ87iuXiyydi25g8j0kqzTmKRv3gXIiMQTjsyO+h
	yY3CU4HEAOcfoerg7tP2aViDI4CNeQ4wo9n9+cdk/Q1zel0ow6p3vVs8qQAfZIcxIZ2kaz25F6z68
	7T2K+lmdEXNinuYzrmxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ7o1-0006eH-2C; Fri, 07 Jun 2019 05:52:49 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ7ns-0006cz-Ta
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 05:52:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id c66so669353wmf.0
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 22:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=36gEkNDx0uUeJoUQsXVk3mt2cfXOtD54F9aZsyl2w8M=;
 b=pDdAAUOpVsFzxNwV4O/e7ssQLNLp50XAh3glMTxl5eSnaHqtKF1ESH20wwt4BLQ/kh
 BH7Od/RfACcOXYVEIHend3957AwdYma2TIl9/LqXUz4RFZcrNMzz27LkuDXjVjWNKTih
 ByCP8NoFt4Peya0Fp9Z21FaEJu/O+2bb8GCVNqttwksWr2+ZPc0cmapZ1Anup+ViBNTZ
 vjBIujh54ocCaeRN2S4DXdXQ718laVtBtLQxjNMDeXv9pj9WBm/YV9GRPDwOtdsA5mWJ
 krketIS//R+rWMkC2qjWZnfTvl0ZR5/Jjz7KOThnoVy/qaKx6I0jpjjmoalU/zkPP0pe
 +kUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=36gEkNDx0uUeJoUQsXVk3mt2cfXOtD54F9aZsyl2w8M=;
 b=S7ar3Tn91InhV8/ZeFLg+GSfluUJrW27begCKfdLJ7YrTOn12+R/f1v80mOmf2GjN7
 PhJK/xjJ2Zr5goa6eAoAEi7aK1Sp9BYZ/ZTfDQcXIBTtwScmmf1QA7JZ72rLGvzWM9+W
 1iQSbHnayNGOBBAzcDGGHsq1Difn5V7Ji8xEHWZSJwRMeU0uX1I/AE+oqIyRZIXUW8B/
 NZbuQJ9Cx1eEty2Dw/1DMCUXWJUtDNOQ2GGVl91sEKL/i4A2Xpb2uzQp4RlfWfK0NeJm
 yw4SUaid9hMeBXGt7CwW5vRHQskSvxSrdU2pzb5K9CrVaQW73om1+RAIV6n+M02gzbzi
 n11g==
X-Gm-Message-State: APjAAAVb3yqICvCTctkkHZBvqtSFD6Yo6E05QxA9cZ/Ua+DYiFwa3CTv
 zf/ZB3y8jVLUEQmlsiPeA/Ii7w==
X-Google-Smtp-Source: APXvYqxWfaiEDyUcmFI97Rqe1RFTEHA2+tg12ZBqTXrA/m0sqmbdeuwPeKLwpO4B0drdqMT3H41KnQ==
X-Received: by 2002:a05:600c:204c:: with SMTP id
 p12mr2244021wmg.121.1559886757922; 
 Thu, 06 Jun 2019 22:52:37 -0700 (PDT)
Received: from [10.97.4.179] (aputeaux-682-1-82-78.w90-86.abo.wanadoo.fr.
 [90.86.61.78])
 by smtp.gmail.com with ESMTPSA id j15sm819336wrn.50.2019.06.06.22.52.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 22:52:37 -0700 (PDT)
Subject: Re: properly communicate queue limits to the DMA layer
To: Christoph Hellwig <hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
 <591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
 <20190605192405.GA18243@lst.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <f07d0abf-b3eb-f530-37b9-e66454740b3f@kernel.dk>
Date: Thu, 6 Jun 2019 23:52:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605192405.GA18243@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_225241_005645_67527391 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, Sebastian Ott <sebott@linux.ibm.com>,
 linux-rdma@vger.kernel.org, Oliver Neukum <oneukum@suse.com>,
 linux-mmc@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>, linux-scsi@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, MPT-FusionLinux.pdl@broadcom.com,
 megaraidlinux.pdl@broadcom.com, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/5/19 1:24 PM, Christoph Hellwig wrote:
> On Wed, Jun 05, 2019 at 01:17:15PM -0600, Jens Axboe wrote:
>> Since I'm heading out shortly and since I think this should make
>> the next -rc, I'll tentatively queue this up.
> 
> The SCSI bits will need a bit more review, and possibly tweaking
> fo megaraid and mpt3sas.  But they are really independent of the
> other patches, so maybe skip them for now and leave them for Martin
> to deal with.

I dropped the SCSI bits.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
