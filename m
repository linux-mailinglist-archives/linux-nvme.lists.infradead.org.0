Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E579CDF9
	for <lists+linux-nvme@lfdr.de>; Mon, 26 Aug 2019 13:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1li4gdqwFey5QWXh/PDQC3M+4C1nLhFD1kuERgznIkM=; b=sVpqpt9VBAsdqd
	cIFOhL1vImRnWsoKevzqEK2eaXYKxaEoiKAXzBwZyuq+OMI1QKfn41GOukf9kl6m8OkQi4A74aceu
	LcIGdb45IxgZKzjqOsD4aR7nP0a6ziVWUa4TbOEwfDwIuSjvJjfN1s3L2aGmzWsx1pGn1S/BjnoJk
	rNXqiucnOdWXpEBwZt73wzrc2q0Ffi4AftIkeqtVrlJoOx3viw8yky5roXrJ6t9R9x+5+dXHusq/O
	M8x05A8WykoT05mejafxSlomav+A6stOHuKt+oV4UUJTM2AukMqTMPZCRmYIZyvk/eQzDiJwPjUuE
	u3pw5xZayy9YL79v1IDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2D39-0003Sl-Ft; Mon, 26 Aug 2019 11:20:39 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2D33-0003RM-0y
 for linux-nvme@lists.infradead.org; Mon, 26 Aug 2019 11:20:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8EB5227E064D;
 Mon, 26 Aug 2019 13:20:28 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Ikw_e-efbxjL; Mon, 26 Aug 2019 13:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 29B5127E0E5F;
 Mon, 26 Aug 2019 13:20:28 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 29B5127E0E5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1566818428;
 bh=tsMZPKKNKbI1bxBzVmtUnATkR6Uyc9slc45iBOLgVIQ=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=iUOInlIyEEGDWg1LIFSHrTBY4de3dAi8xD/6oxQKuKl+CdMK2LPcp6SG2d97XVVeO
 2O5VituFjcDVop/SsmJFsf0yBdOqn2xrdXjQheWns6/cgICU3sMwUb5as7MvfhiGiS
 eRtsUdy+cmA5ien2eKIlM+E1puAcWWaEvcHc6HaE=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IdXClkO_c_9L; Mon, 26 Aug 2019 13:20:28 +0200 (CEST)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0B6EB27E064D;
 Mon, 26 Aug 2019 13:20:28 +0200 (CEST)
Date: Mon, 26 Aug 2019 13:20:28 +0200 (CEST)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <1678802062.58145473.1566818428010.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20190822000652.GF9511@lst.de>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
 <20190822000652.GF9511@lst.de>
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvme: allow 64-bit results in passthru commands
Thread-Index: 0b2C8OxcS39CpE4vfrdjGI09niL36A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_042033_446295_CC1946C4 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Samuel Jones <sjones@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



----- On 22 Aug, 2019, at 02:06, Christoph Hellwig hch@lst.de wrote:

> On Fri, Aug 16, 2019 at 11:47:21AM +0200, Marta Rybczynska wrote:
>> It is not possible to get 64-bit results from the passthru commands,
>> what prevents from getting for the Capabilities (CAP) property value.
>> 
>> As a result, it is not possible to implement IOL's NVMe Conformance
>> test 4.3 Case 1 for Fabrics targets [1] (page 123).
>> 
>> This issue has been already discussed [2], but without a solution.
>> 
>> This patch solves the problem by adding new ioctls with a new
>> passthru structure, including 64-bit results. The older ioctls stay
>> unchanged.
> 
> Ok, with my idea not being suitable I think I'm fine with this approach, a
> little nitpick below:
> 
>> +static bool is_admin_cmd(unsigned int cmd)
>> +{
>> +	if ((cmd == NVME_IOCTL_ADMIN_CMD) || (cmd == NVME_IOCTL_ADMIN64_CMD))
>> +		return true;
>> +	return false;
>> +}
> 
> No need for the inner braces.  But I'm actually not sure the current
> code structure is very suitable for extending it.
> 
>> +
>>  static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>>  		unsigned int cmd, unsigned long arg)
>>  {
>> @@ -1418,13 +1473,13 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t
>> mode,
>>  	 * seperately and drop the ns SRCU reference early.  This avoids a
>>  	 * deadlock when deleting namespaces using the passthrough interface.
>>  	 */
>> -	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd)) {
>> +	if (is_admin_cmd(cmd) || is_sed_ioctl(cmd)) {
> 
> So maybe for this check we should have a is_ctrl_iocl() helper instead
> that includes the is_sed_ioctl check.
> 
>>  		struct nvme_ctrl *ctrl = ns->ctrl;
>>  
>>  		nvme_get_ctrl(ns->ctrl);
>>  		nvme_put_ns_from_disk(head, srcu_idx);
>>  
>> -		if (cmd == NVME_IOCTL_ADMIN_CMD)
>> +		if (is_admin_cmd(cmd))
>>  			ret = nvme_user_cmd(ctrl, NULL, argp);
>>  		else
>>  			ret = sed_ioctl(ctrl->opal_dev, cmd, argp);
> 
> And then we can move this whole branch into a helper function,
> which then switches on the ioctl cmd, with sed_ioctl as the fallback.

Do you mean something like this?

+static bool is_ctrl_ioctl(unsigned int cmd)
+{
+	if (cmd == NVME_IOCTL_ADMIN_CMD || cmd == NVME_IOCTL_ADMIN64_CMD)
+		return true;
+	if (is_sed_ioctl(cmd))
+		return true;
+	return false;
+}
+
+static int nvme_handle_ctrl_ioctl(struct nvme_ns *ns, unsigned int cmd,
+				  void __user *argp,
+				  struct nvme_ns_head *head,
+				  int srcu_idx)
+{
+	struct nvme_ctrl *ctrl = ns->ctrl;
+	int ret;
+
+	nvme_get_ctrl(ns->ctrl);
+	nvme_put_ns_from_disk(head, srcu_idx);
+
+	switch (cmd) {
+	case NVME_IOCTL_ADMIN_CMD:
+		ret = nvme_user_cmd(ctrl, NULL, argp);
+		break;
+	case NVME_IOCTL_ADMIN64_CMD:
+		ret = nvme_user_cmd64(ctrl, NULL, argp);
+		break;
+	default:
+		ret = sed_ioctl(ctrl->opal_dev, cmd, argp);
+		break;
+	}
+	nvme_put_ctrl(ctrl);
+	return ret;
+}
+
 static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 		unsigned int cmd, unsigned long arg)
 {
@@ -1418,20 +1501,8 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 	 * seperately and drop the ns SRCU reference early.  This avoids a
 	 * deadlock when deleting namespaces using the passthrough interface.
 	 */
-	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd)) {
-		struct nvme_ctrl *ctrl = ns->ctrl;
-
-		nvme_get_ctrl(ns->ctrl);
-		nvme_put_ns_from_disk(head, srcu_idx);
-
-		if (cmd == NVME_IOCTL_ADMIN_CMD)
-			ret = nvme_user_cmd(ctrl, NULL, argp);
-		else
-			ret = sed_ioctl(ctrl->opal_dev, cmd, argp);
-
-		nvme_put_ctrl(ctrl);
-		return ret;
-	}
+	if (is_ctrl_ioctl(cmd))
+		return nvme_handle_ctrl_ioctl(ns, cmd, argp, head, srcu_idx);
 
 	switch (cmd) {
 	case NVME_IOCTL_ID:

Regards,
Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
