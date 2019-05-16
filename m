Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75042096F
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovd4N4JlNHuk/rKjQ3m+4zKMyz4zUp45NndNcV8G0h0=; b=oxbtMa1Lu6bvFW
	VGqYcUlbRcvl0pJURvZc6zh/RVKELjh1RTwL+/O4wl9gU70SOPP4ZjN8IePaHrz7Pd69f8mqpZOUb
	2LeGcAwsi+PgA3SdefPiJrRodRlyA/jMza1tJ8lYDHzbjmGeG4ru3r8R6ttbIlZx0UrNvitnq6gsq
	VqaKsp5sxBHsrxhvFEFf9sW/+kDgpisYqLxZYtcblB80+StGAFAKUj5Bc2l7Y32tRmqyHlbarBJbh
	DyarDUor2g8Z0XYWm664W0FxYHJpp/iBRoMDjIw23ECPjvwy0LwMkAvUDccaYBC2dwZbygKaTtz1e
	r8/HtXN1N1j1qJauHWCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHIR-0006wJ-RL; Thu, 16 May 2019 14:23:47 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHIM-0006vv-JX
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:23:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id j26so1652550pgl.5
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 07:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Jrk+rpw8J8CTsHQ9cBEqb7CiKn9QorTOHcoV2OsZp1c=;
 b=Aslk4mGoDz9R6CtfPxhVAJtoT/vFRymvtpoC087MDA4WZmiXrQcxlGHfwraASUXaGt
 Uo7Ksvx3PYAfBaD+q0+/5NvquE9c0oiPc/hCQX0HxAP3WwMxcVIN0H75y5dI708tKEU3
 wAdpQhUZwEF1gIT+bZKbaw00uRhalfbvYy+7p9DMoGlwA6Gh1FqKFn1IZZrKLJgzY6QS
 jn3BD8W7gvsgbNTrkuM1ReMi7Se2x9bMKAHfnWLQ9SlgJN4KyQPohy0o7LMpyMOoF3BN
 mxJPNAoH+JMRJyVrsBotjH416Z0bLEEcsEZWA+WbONcPd3/kkSjMKp0mhOHd+qILERpC
 W85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jrk+rpw8J8CTsHQ9cBEqb7CiKn9QorTOHcoV2OsZp1c=;
 b=FNkqjskp62q5JKjl211n7aao2+ibqOQb2r+wFCxENM2+pqcOxzrt4tqyT7Nw+/3Kb5
 LOwnEXYlZQyDsKS+ncgbO08AvKBB0pRNP8BBq/+h2evhy6cRGEj6aBpKaulD5PiI+3Yx
 x1x6JQF5pPm1hHf4ZoKsJjpXke7RDUBzfoNQ4HHcG5rehY6/VyBaT446IqGH2yRQP2yz
 lWhXOxVc/UiW9yPRoHpgK3/OEdEYN8vIYSINSGar2HWF76JKgVO6/aImgzVG04wIC83Z
 nbL2K7GAdVDxpXpD1mq0fwmnpv2KtNtwbIjtgxOl1dYQmjXkZGCh6e8/PhIh6d+2FzMZ
 shTg==
X-Gm-Message-State: APjAAAU3wLQwomSJk/YIjVi3AiUTdKNXRzVQhgrfTvBI/UR4l7jPvZoj
 0Y2BLAii2qMkG1jLK+E48DshdXi8irE=
X-Google-Smtp-Source: APXvYqwDAcFXdXnj1KLwN2Q/551ng9KWAxjNfcCJzigXn+gFyg4EtYIZF0kgOgBWLvaDwr5Kz9TIrA==
X-Received: by 2002:aa7:8e04:: with SMTP id c4mr53893146pfr.48.1558016621914; 
 Thu, 16 May 2019 07:23:41 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id j22sm7140939pfn.121.2019.05.16.07.23.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 07:23:41 -0700 (PDT)
Date: Thu, 16 May 2019 23:23:38 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
Message-ID: <20190516142337.GD24001@minwooim-desktop>
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_072342_666937_400598A4 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Akinobu,

Great feature here, I think.

> -static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
> -		      void *buffer, size_t buflen, u32 *result)
> +static int nvme_features(struct nvme_ctrl *dev, u8 opcode, unsigned int fid,
> +			 unsigned int dword11, void *buffer, size_t buflen,
> +			 u32 *result)
>  {
>  	struct nvme_command c;
>  	union nvme_result res;
>  	int ret;
>  
>  	memset(&c, 0, sizeof(c));
> -	c.features.opcode = nvme_admin_set_features;
> +	c.features.opcode = opcode;
>  	c.features.fid = cpu_to_le32(fid);
>  	c.features.dword11 = cpu_to_le32(dword11);
>  
> @@ -1132,6 +1133,22 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
>  	return ret;
>  }
>  
> +static int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid,
> +			     unsigned int dword11, void *buffer, size_t buflen,
> +			     u32 *result)
> +{
> +	return nvme_features(dev, nvme_admin_get_features, fid, dword11, buffer,
> +			     buflen, result);
> +}
> +
> +static int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid,
> +			     unsigned int dword11, void *buffer, size_t buflen,
> +			     u32 *result)
> +{
> +	return nvme_features(dev, nvme_admin_set_features, fid, dword11, buffer,
> +			     buflen, result);
> +}
> +

I think it's okay to separate this part from this patch. :)
(I guess I have seen this kind of patch from Keith, though)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
