Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BF988BBC
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 16:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ARASoAacc+fNZQMjNf0yXuenukA7rnEVMafs/I0JUM=; b=RRPioGUvJvVews
	JYlT+aI4PxgZVNbL3OV7J2qN/W60fcquT+JunCruplVRUzihkcNROrPCnF0KHxYE9So5qC2G8Vo9l
	mGxzSv7EYAii2WKBOw16AwImT4zRufWEYPzijSLUmzWqzzZ3kT/Z8RnpTN9yP3ahTy7xhxGTGz5eL
	PK7YMNqV0zski/vi/d+5v4n9PBD3Ljes6vHRHfsOsU4t1G8hyU+p0pEo4uJP4Gfs7UdeXjPzQPbty
	fnVZPWH/ufycj32JzA2HcCHWh+IqpCMv6vd6I4Hx0r2QK07Qu45n3MYS8q8dHhpmuOwdQETjSYcma
	Iy8moapIb5mc7auqyz7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwSDb-0005m5-GA; Sat, 10 Aug 2019 14:19:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwSDT-0005lI-Sl
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 14:19:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so8022319wmj.5
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 07:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hzp6Ib02KAHxhl9iLJS0JlBn9gvvRHfJbqs/+oSKrcw=;
 b=ZoRWWXC1cLB6MLiNjUp8RbzbFX9URA+uFMw2Q6ozTh4cbBeFg6XyX+rxz6x0DvSkWP
 SkhxowynAv/qs8cvZMmbfrEWF3A7ex+Sj8ioqmmkf+hYGLQX2KeaxkTLCz+6xmWSI2gc
 vxsjHMCy1R/zaLS6a7QZpgLa/7FUK2VCCPQT5XKDo5NecWS5SIT5+zd1Ly5L943glQ8F
 Mfh0j94aqkJ8RoIZAbOWOsq9gMa9F9y8Moy7V0hQW16ykgJCVFZLkE6VQ/RIZs2TR0iy
 GGLP1hs+ywRuxqq2GGSdtt4Qhk/44R40ZwAYkeEZWed8TlvaWoDxJlUeO+iU5rbPE351
 2t1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hzp6Ib02KAHxhl9iLJS0JlBn9gvvRHfJbqs/+oSKrcw=;
 b=M+nB2csMMdAYL7cUqXcW8mYhqkeF1Xdn5YaxcnrU5WOcFn5oGTWS9Nn/dSWk9Yisge
 qEhz3Rc/On78mE1YgM8id9jzKGi/gaNEiqHHjonQVt/THFLaOj6Y55wyms2HK1Vv9ucV
 AwOlHydWHlthLtrw+Mz5W8hSaGCQ5szJIB7wPT3dc95MEaS8TxvrTWD1q8h0/NV+PbPE
 3GIf3uqDEayJ61Eg9ZyhsNt734h6oY2VwAADjqKzOGDf370m8D3BSZTWODa7tKyW+QuF
 kjfc2K4cZytR2zlPHm5Q7r73GD+HTlxmLAlkYnSTSBkVtlhT37KnP6yC3UNp4YOLkSmF
 1t9g==
X-Gm-Message-State: APjAAAVhDoeDg3LFnhpxt/R0IlMAXVn4jMaGCgDknAGf6u7m9JdxFePx
 0M2lOPgEgUHPsTUP62pD9sqt0QAW6Y36UoYxABM=
X-Google-Smtp-Source: APXvYqwY7ckGBnCLC255Uwwmk4x8NTMkb4gqmJrFlbOTOwgwuTBCHzBNaBa1IOAxDlODuo2ekOj+IU7ZoIlpQ32T7lM=
X-Received: by 2002:a1c:c584:: with SMTP id v126mr11558029wmf.27.1565446767518; 
 Sat, 10 Aug 2019 07:19:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190809221211.21157-1-sagi@grimberg.me>
 <20190809221211.21157-3-sagi@grimberg.me>
In-Reply-To: <20190809221211.21157-3-sagi@grimberg.me>
From: Keith Busch <keith.busch@gmail.com>
Date: Sat, 10 Aug 2019 08:19:16 -0600
Message-ID: <CAOSXXT607=1L5TywNgpi242kcKP-P64Bz4atUgQ6iT=B41HV1A@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] nvme: return a proper status for sync commands
 failure
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_071931_965065_F667C252 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 4:12 PM Sagi Grimberg <sagi@grimberg.me> wrote:
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -805,7 +805,7 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
>         if (nvme_req(req)->flags & NVME_REQ_CANCELLED)
>                 ret = -EINTR;
>         else
> -               ret = nvme_req(req)->status;
> +               ret = nvme_error_status(req);
>   out:
>         blk_mq_free_request(req);
>         return ret;
> @@ -896,7 +896,7 @@ static int nvme_submit_user_cmd(struct request_queue *q,
>         if (nvme_req(req)->flags & NVME_REQ_CANCELLED)
>                 ret = -EINTR;
>         else
> -               ret = nvme_req(req)->status;
> +               ret = nvme_error_status(req);
>         if (result)
>                 *result = le32_to_cpu(nvme_req(req)->result.u32);
>         if (meta && !ret && !write) {
> --

Fine for the driver initiated commands, but no for user commands.
Tooling definitely wants to see the NVMe status directly, and we'll
break them all if we change this API.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
