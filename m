Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1658C000
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 19:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3JBKAk+gNiv9AzEaeVbaIYPkCrbabjvKkct+1IDaEz4=; b=Kme8kWr78q1ItOusTgGXgQGbU
	PrK5oxRiNCee59yeyoKxT6RM32A6ach5u1aRx6AcA7H92u3J/4P6vkeVevG9VvH8dQ4wnM4+YYcZf
	TyDcQQirhru0+ILcifUiSNA6tjjs2SD279hCcPvGEcv11Hf3+MKVAjM7ES5Y52tnfXboAvleEgK43
	sndACm1BJRh8YcyrA0dHX1bMnzkpoxJyyrz+HvWThk52el15GPwFo7cu5UuzkJk4TOl6ttneykBXF
	P2znAXbFCUTjNwhlVBtUlMboqO0/LY9HbVpRe9Ui+RWrMZF0BUqkApZ0ouT9q9RuZlAvv7g8gEUby
	bjKCPZEHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxb1C-0006b7-Sc; Tue, 13 Aug 2019 17:55:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxb16-0006a9-Eh
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 17:55:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so49550199plr.11
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 10:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=XkRvVfUwr0Dakm3vmRCa6BYldzWBU4/EQajSWR0AGmI=;
 b=DUQSpTK7z94cI31exCRn4VS9YEf7NtoaMa/U5TFfuL/71ibQOXcej5Nu3o5yfRnGHT
 OUdFDQ71BhAI8u371GFGTe9j4ebfQuPhMRw62VoUhtdAsA5xpLD6HdalnMO2KmtqKUdC
 XQ9E+uyiM8Y9ssiYqL2Kphr89evRHuaNtZ8FM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XkRvVfUwr0Dakm3vmRCa6BYldzWBU4/EQajSWR0AGmI=;
 b=FtYl0zj//YDnFu4P3d2ZTG/nNx7kf+h2a0GkmiRByv7Wnkhd70PIegAz5uZzM3FaAK
 sbF4PpTqr6rTmkX1f8//QLPCNeAUNAacW/AYm/niWX0eG/aNogewxu54d1x725/jUeKN
 iFtpmJSv4Ktj20uu41lfWU/e1/ys9/eChkJT8GWToEC810QmyRpZVdvAEFirdFAefHX0
 3F0DYTZm37gaqClGqcBEcH6oPxh5blcYefuMxrkKOmJ0gofSMD/o5Ho12Yomnn5xGwDP
 nigb7xXlkRtcfu6ARNx2H2rZtfoeZHysiydXMskTcSppsf/cUkcGdgA9YO4v1nIOyPMU
 p+uA==
X-Gm-Message-State: APjAAAUV/8k7O2r0NYfn+GAj2zSZVS4h4WItDPDikSPKtKM7/a7W0TP8
 FA7cKNGNhfNK3k/lfEEzU7556Q==
X-Google-Smtp-Source: APXvYqwmHOozsHYkZ4MLgwFsv+JlmsjwRnFdW/p8N7hcHQuwYh1i21BdzgcP1bDEiJVEdp9qt5Aiqg==
X-Received: by 2002:a17:902:b28:: with SMTP id 37mr23242936plq.2.1565718926964; 
 Tue, 13 Aug 2019 10:55:26 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v145sm15709059pfc.31.2019.08.13.10.55.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 10:55:26 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvme-fabrics: Add type of service (TOS) configuration
To: Sagi Grimberg <sagi@grimberg.me>, Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
 <1565702251-17198-3-git-send-email-israelr@mellanox.com>
 <7054c205-5490-9329-8dc9-8c0bbb78e4d7@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <16b420a0-8766-6135-6a88-f8408cc67673@broadcom.com>
Date: Tue, 13 Aug 2019 10:55:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7054c205-5490-9329-8dc9-8c0bbb78e4d7@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_105528_498489_F8B4F5FA 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 8/13/2019 9:40 AM, Sagi Grimberg wrote:
> James, Christoph, Keith,
>
> What do you think, do we want to start individual transport parameters
> support like James suggested?

As 2 of the 3 nvmeof transports can use it - global parameter seems fine.

I may revisit it on some things I have upcoming.

-- james



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
