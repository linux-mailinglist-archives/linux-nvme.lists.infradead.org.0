Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567AF8F649
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 23:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SfvkMalIooByZ9BF1lMNtFvJH88CXQBr1mkJP5LrBSw=; b=aHI4JrBPm8mmRJ1V2BaqzHYN5
	p0F0Rhx24VyCQHR2tICfaB5WPVJO5TUZMihkcjc+FjfjB9FAMF+6vgeVkxNVoYoeGcJflAeriBQ7m
	ltSJvqgeitgHU8vJpEZqLDS0oR3gazlowfinlpIPuCJG8DHxzHF9MoI/NPfgnb059Xn/137U77SE7
	FzYSem4qEHni4ug3fFV9c72+Z1it3qugDa7j0sPr2w13Mq/ltONpRI+tMHJ/ktHGjx1nm5fM2s9Mx
	shACTnv2rGqBPsNLdrntY8nLRccmnFR2ebY5rTR/hR0FROggG65FbMdrPdoJpgdnMOna4dLEakbIm
	vW2SL7p/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyN3N-0002RM-1R; Thu, 15 Aug 2019 21:13:01 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyN3C-0002Qv-5F
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 21:12:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id g4so1541645plo.3
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 14:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=bKmeyHXB4q2Zjdsp86CZH9vsa8fXSzDngx62aKDLesQ=;
 b=YLPxcdicAF7Ka0FURyOIphJHpjeYsVNzILzwcWZGXh//AZQfulkfWr+6NXff3Sn8iK
 Y9uFQOofAQjCG7u6d7i8df2Zvsbkz5Wwt2Ir0YyLJnAmY9rWfTo3RsA5aDTGUOkBys8k
 uL5ch2V4GZpN/PPIII4MJUgKv99xveyJ6hoDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=bKmeyHXB4q2Zjdsp86CZH9vsa8fXSzDngx62aKDLesQ=;
 b=edJ4ETDsCO8ZyU49r/px1JboLdXW0dL8s2FhnSkJbutHmVbdUBerMJN/fZnCuLvxlh
 QiswpUggvUmc0btBO4DMpmw5AzTrpn3C2OThpb3OC/inw9c5tsO53jR3n3WPvLTulk6q
 asdDGNB305WaA57WZL37pIQLR4B6hYU5/rBDI84num3p0A3YWTZaisVpxt03awgRM6Ei
 BXpJYvybA2NkF0uXrlyTlbr0ve3Bx3dJU2/vemcAnjQhGU3Vqgjbs5id3MtkYrGduSnB
 WnHvyFfr2CzJyQBO+EmIeS+tO3ppHM8SGuHSf1wYcQhHf6GiLL3TocnjbNtvRRQJuweq
 fPFA==
X-Gm-Message-State: APjAAAXxDg1MGf9xiaxbaJpwFnO+kjpM4Q+BeofhIomlxbYSQ4x1QkWu
 B8mu2pNvSCrZaUMYvR31/yX0nA==
X-Google-Smtp-Source: APXvYqy1qcDafoeXrnhLfO7Y50RcC6tsmuPV0vXPa1S2x20Zk4FIcJ++uIqhnP9i85PloTW3UT2L1g==
X-Received: by 2002:a17:902:7202:: with SMTP id
 ba2mr6219008plb.266.1565903569730; 
 Thu, 15 Aug 2019 14:12:49 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 97sm2189600pjz.12.2019.08.15.14.12.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 14:12:48 -0700 (PDT)
Subject: Re: [PATCH v6 6/7] nvme-fc: Fail transport errors with
 NVME_SC_HOST_PATH
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-7-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <170e224c-4587-e767-ce15-142f32530e89@broadcom.com>
Date: Thu, 15 Aug 2019 14:12:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813064304.7344-7-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_141250_199361_8C5812B0 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 8/12/2019 11:43 PM, Sagi Grimberg wrote:
> From: James Smart <james.smart@broadcom.com>
>
> NVME_SC_INTERNAL should indicate an internal controller errors
> and not host transport errors. These errors will propagate to
> upper layers (essentially nvme core) and be interpereted as
> transport errors which should not be taken into account for
> namespace state or condition.
>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>

Reviewed-by: James Smart <james.smart@broadcom.com>

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
