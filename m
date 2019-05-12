Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A94F1ACA5
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 16:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nBPFdZoVZL5iia8UcxO28TQ6cxPdceJCnVueZ9/SKjM=; b=klrjr6T94nkpLN9BhGbsbZo11
	VpvWqPTiOYGkr7JVxDG329nKsW6S+2Y7zBijMnedItBfqEAVHLkYbIxNCdgHSjV0ZtHzAUh84Zsa6
	6PnI2bgKeALPcroIgmL3ipJcedWBf4/6xyk76sY9SkyMDjvtLMRCjr0/VVf39FM8sx9UG1sXw8Tp0
	0IEczi/iqCEmIUIk0mF0iqzL4pe/gkRBgvJm6+ztf1D3mSpjL9rskSC05zdU7YtlBluSQmGvHuIbM
	oKCIcVtHvUWiCdhcylE6zNzDjhiWGpg+HdnMgHyP4HT0qmwSTFMXhf3ei8Ebb+liAjFpkB1hDL7MI
	UYVzwyyhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPpYJ-0004dT-VI; Sun, 12 May 2019 14:34:11 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPpYF-0004d9-G5
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 14:34:08 +0000
Received: by mail-wm1-f66.google.com with SMTP id q15so7314316wmj.0
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 07:34:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=opR4X5SmjYgiPNH3JawKfnbS9NWBfn0uzbl47S80FYI=;
 b=Q/k48CanKPdiRRevGGydxAIje4WSyh+ZQddLZLUJz6j3pRyFBYwxbwHAxqzS5AOyqT
 NCDzEVbvTo9LfVbBP/GLfbDpnxa2ygc6ywTUj3lj1auGjaHG1DUZwagM8gFuIWfs3yIs
 9/mVKmqPQTMP6x7FZeJG4z23omEFZp88GeWEYEWMa/aVxX++1bE57JA/Ro1kKZDwMV2i
 KVhEDjOeZXI0ZKLNotHxe4adP1Xr4sS4qOXMSLqu/RSyK/BxTo7VaRJgZhHnCh0hKLUB
 rq0NNTeBojvKHIy6uh6n7S5fAcylqhi8iKirNykEDgvbRQ3ENLEQR60ZIfvHbaaEv5MZ
 IITw==
X-Gm-Message-State: APjAAAUzKqkYR6IhIyrhhugI0r3laJAfKD5X0m+CHYDFjOWkQ2VqwFRI
 CvvaVgqQPfbaeLEgfeUnp6Y=
X-Google-Smtp-Source: APXvYqyUtZ/+lZiGS4U9OG78QMCAF2idckf7O3CD4JvxAXJKPTmOWf18PhP4AKCdIKLdW1SZ9cJTUg==
X-Received: by 2002:a1c:c7c8:: with SMTP id x191mr4359561wmf.126.1557671645856; 
 Sun, 12 May 2019 07:34:05 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id e12sm1980146wrs.8.2019.05.12.07.34.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 07:34:05 -0700 (PDT)
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
To: Christoph Hellwig <hch@lst.de>, Keith Busch <keith.busch@intel.com>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <20190511072258.GB14764@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <efc9d481-d2cf-93bc-b640-849892421941@grimberg.me>
Date: Sun, 12 May 2019 07:34:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511072258.GB14764@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_073407_545575_A2D66A94 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Mario Limonciello <Mario.Limonciello@dell.com>,
 linux-pm <linux-pm@vger.kernel.org>, Rafael Wysocki <rafael@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Kai Heng Feng <kai.heng.feng@canonical.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned ps)
>> +{
>> +	return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0, NULL);
>> +}
>> +EXPORT_SYMBOL_GPL(nvme_set_power);
>> +
>> +int nvme_get_power(struct nvme_ctrl *ctrl, u32 *result)
>> +{
>> +	struct nvme_command c;
>> +	union nvme_result res;
>> +	int ret;
>> +
>> +	if (!result)
>> +		return -EINVAL;
>> +
>> +	memset(&c, 0, sizeof(c));
>> +	c.features.opcode = nvme_admin_get_features;
>> +	c.features.fid = cpu_to_le32(NVME_FEAT_POWER_MGMT);
>> +
>> +	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &c, &res,
>> +			NULL, 0, 0, NVME_QID_ANY, 0, 0, false);
>> +	if (ret >= 0)
>> +		*result = le32_to_cpu(res.u32);
>> +	return ret;
>> +}
>> +EXPORT_SYMBOL_GPL(nvme_get_power);
> 
> At this point I'd rather see those in the PCIe driver.  While the
> power state feature is generic in the spec I don't see it actually
> being used anytime anywhere else any time soon.
> 
> But maybe we can add a nvme_get_features helper ala nvme_set_features
> in the core to avoid a little boilerplate code for the future?

+1 on this comment.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
